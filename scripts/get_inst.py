#!/usr/bin/python

import sys
from Module import *

if __name__ == "__main__":
  args = sys.argv
  args.pop(0)
  if(len(args) >0):
    for i in args:
      m = Module()
      m.updateFromFile(i)
      print m
  else:
    print "pass in files to this script. the first is the top module. the rest are instances to be put in the testbench."
