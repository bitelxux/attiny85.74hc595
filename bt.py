#!/usr/bin/python3

import bluetooth
import struct
import time

def connect():
    while(True):
        try:
            gaugeSocket = bluetooth.BluetoothSocket(bluetooth.RFCOMM)
            gaugeSocket.connect(('00:13:03:13:72:10', 1))
            print("Connected!")
            time.sleep(1)
            break;
        except bluetooth.btcommon.BluetoothError as error:
            print("Could not connect: ", error, "; Retrying in 1s...")
            time.sleep(1)
    return gaugeSocket;

if __name__ == '__main__':
    bt = connect()
    while True:
            try:

                val = None
                while val != 128:
                    #print("Waiting for sync")
                    r = bt.recv(1)
                    val = int.from_bytes(r, byteorder='little')
                    #print("Read: %d" % val)
                    if val != 128:
                       print("Out of sync")
                    time.sleep(0.1)

                r = bt.recv(5)
                if len(r) != 5:
                   print("Fail read. Len: %d" & len(r))
                   continue

                #value = struct.unpack(">L", r)[0]
                print(r.decode('utf-8'))
            except Exception as s:
                print("Conection lost ...%s" % s)
                bt.close()
                bt = connect()
