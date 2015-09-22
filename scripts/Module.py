from Signal import *

def parseThis(non_parsed,token1,token2):
  try:
    loc1=non_parsed.find(token1)+len(str(token1))
    loc2=non_parsed.find(token2)
    result = non_parsed[loc1:loc2]
    if (loc1 == -1 or loc2 == -1):
      return ""
    else:
      return result
  except:
    return ""

class Module:
    parameters = ""
    signals = ""
    name = ""
    intermediate_nets = ""
    instance = ""
    def __init__(self,contents="False"):
      if(contents != "False"):
        self.contents = contents
        self.parseParameters()
        self.parseModuleName() 
        self.createSignals() 
        self.instance = self.getInstance()
        self.autoGenerateNets()
    def updateFromString(self,contents):
      self.contents=contents
      self.parseParameters()
      self.parseModuleName() 
      self.createSignals() 
      self.instance = self.getInstance()
      self.autoGenerateNets()
    def updateFromFile(self,afile):
      self.contents = open(afile,"r").read()
      self.parseParameters()
      self.parseModuleName() 
      self.createSignals() 
      self.instance = self.getInstance()
      self.autoGenerateNets()
    def parseParameters(self):
      param_loc = self.contents.find("parameter")
      if(param_loc < 0):
        self.parameters =  ""
      first_lparan = self.contents.find("(")
      first_rparan = self.contents.find(")")
      if(param_loc > first_lparan and param_loc < first_rparan):
        self.parameters = self.contents[first_lparan-1:first_rparan+1]
      else:
        self.parameters =  ""
      print self.parameters
    def parseModuleName(self):
      self.name = self.contents
      if self.parameters  != "":
        print self.parameters
        self.name = self.name.replace(self.parameters,"")
      self.name = parseThis(self.name,"module","(")
      self.name = self.name.replace(" ","").replace("\n","")
    def createSignals(self):
      if(self.parameters == ""):
        self.signals= parseThis(self.contents,"(",");")
      else:
        self.signals= parseThis(self.contents.replace(self.parameters,""),"(",");")
      s = []
      for i in self.signals.split("\n"):
        b = Signal(i)
        try:
          if(b.name.replace(" ","").strip() != ""):
            s.append(b)
        except:
            pass
      self.signals = s
    def __str__(self):
        return self.getInstance()
    def getInstance(self):
      string = self.name + "\n" 
      if(self.parameters != ""):
        string = string + "    " + self.parameters.replace("parameter","").replace(" ","").replace("\n","").replace(")","))").replace(",","),.").replace("(","(.").replace("=","(") + "\n"
      string = string + self.name + "_inst\n    (\n"
      string = string + "    \n"
      self.getIntermediateNets()
      for i in self.signals:
        string = string + "\n    /*" +i.direction+" "+i.sig_type+" "+i.packed_size+" "+i.unpacked_size+"  */ ."+i.name+"("+i.net_name+"),"
      string = string.replace("input","input ")
      furthest = 0
      string = string[0:-1]
      string = string + "\n\n);\n\n"
      final_string = string.split("\n")
      for i in string.split("\n"):
        if(i.find("*/") > furthest):
          furthest = i.find("*/")
      final_string = ""
      for i in string.split("\n"):
        if ("*/" in i):
          rep = (" "*(furthest - i.find("*/")))+"*/"
          final_string = final_string + i.replace("*/",rep) +"\n"
        else:
          final_string = final_string + i +"\n"
      return final_string
    def autoGenerateNets(self,othermodule=""):
      for i in self.signals:
        if(i.direction.strip() != "output" and othermodule!=""):
          for j in othermodule.signals:
            if (j.name[0:-2] == i.name[0:-2] and j.name[-1]!=i.name[-1]):
              i.net_name=j.net_name
        elif(i.direction.strip() == "output"):
          wire_name = self.name+"_"+i.name.strip()
          if(wire_name[-2:-1]=="_"):
            wire_name = wire_name[0:-2]+"_s"
          else:
            wire_name = wire_name+"_s"
          i.net_name=wire_name
    def getIntermediateNets(self):
      string = ""
      for i in self.signals:
        if(i.net_name != ""):
            string = string + "\n" +"wire "+i.packed_size+" "+i.net_name+" "+i.unpacked_size+"; "
      self.intermediate_nets ="//"+self.name+" output signals"+ string.replace(" ;",";") + "\n\n"
      return self.intermediate_nets
    def getModuleFile(self,f,instances=[],nets=""):
      module_contents = ""
      module_contents = module_contents + "module "+self.name+"\n"
      if(self.parameters!=""):
        module_contents = module_contents + "" + self.parameters + " \n"
      signals = "    "
      for i in self.signals:
        signals = signals + str(i) + ",\n    "
      module_contents = module_contents + "( \n" + signals[0:signals.rfind(",")] +"\n\n);\n\n"
      module_contents = module_contents + nets
      for i in instances:
        module_contents = module_contents + str(i)
      module_contents = module_contents + "\n\n\nendmodule\n"
      return module_contents
    def writeModuleFile(self,f,instances=[],nets=""):
      f = open(f,"w").write(self.getModuleFile(f,instances,nets))

