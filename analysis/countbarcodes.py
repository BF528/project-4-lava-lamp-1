#!/usr/bin/python
import sys 
import pickle 
from concurrent.futures import ThreadPoolExecutor, as_completed

def createdict(barcodelist): #Depreciated
    print("Starting Dictionary Creation")
    
    bdict = {} 
    for barcode in barcodelist: 
        if barcode not in bdict: 
            bdict[barcode] = barcodelist.count(barcode) 
    
    print("Dictionary Successfully Made")
    return bdict 


def genbarcodelist():
    print("Starting Barcode List Creation ")
    umi = False
    blist = {} #List of barcodes 
    for line in sys.stdin:
        if umi: 
            barcode = line[0:19]
            if barcode not in blist:
                blist[barcode] = 1 
            else: 
                blist[barcode] += 1 
        if line[-11:-8] == "umi": 
            umi = True
        else:
            umi = False 
    print("List Successfully Generated")
    return blist

def pickledict(listname): #Pickles the list for access later 
    print("Starting Pickle")
    with open(listname, 'wb') as file: 
        pickle.dump(genbarcodelist(), file)
    print("Finished Pickle")


listname = sys.argv[1] 
pickledict(listname)




