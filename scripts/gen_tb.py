#!/usr/bin/python

import sys,os,pickle
from Module import *
from Signal import *

def retrieveFileContents(afile):
  contents = open(afile,"r").read()
  header = contents.split("module")[0]
  contents = contents.replace(header,"")
  return contents


def createModule(contents):
    m = Module(contents)
    return Module(contents)


def parseInstanceSignals(contents):
  instance_signals = parseSignals(contents)
  signal_names = parseSignalNames(contents)
  for s in signal_names:
    instance_signals = instance_signals.replace(s,"*/  ."+s+"("+s+")")
  instance_signals = instance_signals.replace("input","/*input")
  instance_signals = instance_signals.replace("output","/*output")
  instance_signals = instance_signals.replace("i)","s)")
  instance_signals = instance_signals.replace("o)","s)")
  return instance_signals

def parseSignalNames(contents):
  instance_signals = parseSignals(contents)
  signal_names = instance_signals.replace(" ","").replace("output","").replace("input","")
  signal_names = signal_names.split(",\n")
  snames = []
  for s in signal_names:
    if ("//" in s):
      s=str(s.split("/")[0])
      if(len(s) <=1):
        s=""
    if ( "]" in s):
      snames.append(s.split("]")[-1])
    elif (s!=""):
      snames.append(s)
  return snames

def generateStim(module):
  stim = pickle.dumps(module)
  module = pickle.loads(stim)
  stim = pickle.loads(stim)

  signals = stim.signals
  to_keep = []
  for i in signals:
    if (i.direction=="output"):
      i.direction="input"
      if(i.name[-2:-1]=="_"):
        i.name=i.name[0:-2]
      i.name=i.name+"_i"
      to_keep.append(i)
    elif (i.direction=="input"):
      i.direction="output"
      if(i.name[-2:-1]=="_"):
        i.name=i.name[0:-2]
      i.name=i.name+"_o"
      to_keep.append(i)
    else: #interface
      to_keep.append(i)
  stim.signals=to_keep
  stim.name="Stimulus"
  stim.getIntermediateNets()
  return stim

def generateScoreBoard(module,s):
  expected = pickle.dumps(module)
  s = pickle.dumps(s)
  s = pickle.loads(s)
  module = pickle.loads(expected)
  expected = pickle.loads(expected)
  str(s)
  expected.name="ScoreBoard"
  expected_signals = []
  for i in module.signals:
    i.name = module.name+"_"+i.name
    if (i.direction == "output"):
      if(i.name[-2:-1] == "_"):
        i.name = i.name[0:-2]
      i.direction ="input"
      i.name = i.name+"_i"
      expected_signals.append(i)
    else: #interface
      expected_signals.append(i)
  for i in s.signals:
    i.name = s.name+"_"+i.name
    if (i.direction == "output"):
      if(i.name[-2:-1] == "_"):
        i.name = i.name[0:-2]
      i.direction="input"
      i.name = i.name+"_i"
      expected_signals.append(i)
    else: #interface
      expected_signals.append(i)
  expected.signals=expected_signals
  return expected

def generateTestBench(modules):
  expected = pickle.dumps(modules)
  modules = pickle.loads(expected)
  tb = modules[0]
  tb.signals=""
  tb.name = modules[0].name+"_tb"
  tb.signals = ""
  tb.intermediate_nets = ""
  tb.instance = ""
  return tb

def generateTestEnvironment(files):
  top_file = str(files)
  modules = []
  c = retrieveFileContents(top_file)
  c = createModule(c)
  module = c
  modules.append(module)

  try:
    os.mkdir("../tb/"+module.name)
  except:
    pass

  stim =generateStim(module)
  modules.append(stim)

  module.autoGenerateNets()
  stim.autoGenerateNets(module)

  module.autoGenerateNets(stim)

  expected = generateScoreBoard(module,stim)
  modules.append(expected)
  for i in modules:
    print i

  tb = generateTestBench(modules)
  print tb
  test_bench_file = "../tb/"+module.name+"/"+module.name+"_tb.sv"
  tb.writeModuleFile(test_bench_file,modules,stim.getIntermediateNets())

  stimulus_file= "../tb/"+module.name+"/"+stim.name+".sv"
  stim.writeModuleFile(stimulus_file)

  expect_file= "../tb/"+module.name+"/"+expected.name+".sv"
  expected.writeModuleFile(expect_file)

  f = open("tests/"+module.name+".f","w")
  f.write(top_file+"\n")
  f.write(test_bench_file+"\n")
  f.write(stimulus_file+"\n")
  f.write(expect_file+"\n")
  f.close()

if __name__ == "__main__":
  args = sys.argv
  args.pop(0)
  if(len(args) >0):
    for i in args:
      print i
      generateTestEnvironment(i)
  else:
    print "pass in files to this script. the first is the top module. the rest are instances to be put in the testbench."
