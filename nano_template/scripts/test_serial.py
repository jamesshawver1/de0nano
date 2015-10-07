import serial,time,sys

# configure the serial connections (the parameters differs on the device you are connecting to)
ser = serial.Serial(
    port='/dev/ttyUSB0',
    baudrate=115200,
    parity=serial.PARITY_NONE,
    stopbits=serial.STOPBITS_ONE,
    bytesize=serial.EIGHTBITS
)

ser.isOpen()

passes=0
fails=0
i=1
while 1 :
    if (i >=127):
        i=1
    else:
        i+=1
    ser.write(str(unichr(i)))
    out = ''
    time.sleep(0.01)
    while ser.inWaiting() > 0:
        out += ser.read(1)

    if out != str(unichr(i)):
        fails+=1
    else:
        passes+=1
    sys.stdout.write("passing percentage="+str(float(passes*100/(passes+fails))))
    sys.stdout.write("\tfails="+str(fails)+"\tpasses="+str(passes)+"\r")
    sys.stdout.flush()
