import sys

class Signal:
    direction = ""
    sig_type = ""
    name = ""
    packed_size = ""
    unpacked_size = ""
    net_name = ""
    def __str__(self):
      return self.direction + " " + self.sig_type + " " + self.packed_size + " " + self.name+ " " + self.unpacked_size
    def __init__(self,some_string):
      s = some_string.strip()
      if("/" in s):
        s = s.split("/")[0]
      if ( len(s) == 0) :
        return
      s = s.replace(",","")
      s = s.replace(";","")
      s = s.replace("\t","") #removing spaces
      s = s.replace("\n","") #removing new lines 
      while (s.find("  ") >= 0):
        s = s.replace("  "," ") #removing duplicate spaces
      #moving size modifiers next to type
      s = s.replace("[ ","[")
      s = s.replace(" ]","]")
      #spliting up
      s = s.strip().split(" ")
      
      #getting unpacked portions
      while("[" in s[-1]):
        self.unpacked_size= s[-1].strip + self.unpacked_size
        s.pop(-1)
      #name is always last
      self.name = s[-1].strip()
      s.pop(-1)

      #removing check due to interface possibility
      self.direction = s[0].strip()
      s.pop(0)

      while(len(s)>1):
        if ("[" in s[-1]):
          self.packed_size= s[-1].strip() + self.packed_size
          s.pop(-1)
        else:
          raise Exception("unknown field in signal "+some_string+"\n("+str(s)+")\n")
      if (len(s) > 0):
        if ("[" in s[-1]):
          self.packed_size= s[-1].strip() + self.packed_size
          s.pop(-1)
        else:
          self.sig_type = s[0].strip()
