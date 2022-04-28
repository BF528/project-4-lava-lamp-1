#!/usr/bin/python 

import sys
import pickle 
import matplotlib.pyplot as plt 
plt.switch_backend('agg')
import numpy as np 

test = 'test.pkl'
file1 = '604.pkl'
file2 = '605.pkl'
file3 = '606.pkl'

def combinedict(): 
    with open(file1, 'rb') as file: 
        bdict1 = pickle.load(file)
    
    with open(file2, 'rb') as file:           
        bdict2 = pickle.load(file)
    
    with open(file3, 'rb') as file: 
        bdict3 = pickle.load(file)
 
    combineddict = {} 
    for barcode in bdict1: 
        if barcode in combineddict: 
            combineddict[barcode] += bdict1[barcode]
        else: 
            combineddict[barcode] = bdict1[barcode]
    for barcode in bdict2: 
        if barcode in combineddict: 
            combineddict[barcode] += bdict2[barcode]
        else: 
            combineddict[barcode] = bdict2[barcode]

    for barcode in bdict3: 
        if barcode in combineddict: 
            combineddict[barcode] += bdict3[barcode]
        else: 
            combineddict[barcode] = bdict3[barcode]
    
    return combineddict

def readpickle(cdict): 
    
    countslist = []
    for key in cdict: 
        countslist.append(cdict[key])
    print(len(countslist))
    return np.array(countslist)

def cumsum(cdict): 
    data = readpickle(cdict)
    count, bins_count = np.histogram(data, bins=10)
    pdf = count / sum(count)
    cdf = np.cumsum(pdf)

    return bins_count, cdf

def plot(cdict):
    bins_count, cdf = cumsum(cdict)
    plt.plot(bins_count[1:], cdf, label = "CDF")
    plt.legend()
    plt.savefig('combined.png')

def filterbarcodes(thresh): 
    data = combinedict()
    bcodelist = []
    for barcode in data: 
        if data[barcode] > thresh: 
            bcodelist.append(barcode)
            print(barcode)
    #print(len(bcodelist))
    return bcodelist 

filterbarcodes(70000)

