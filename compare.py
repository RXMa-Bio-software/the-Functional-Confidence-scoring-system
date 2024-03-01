#!/usr/bin/python3
import argparse
parser = argparse.ArgumentParser(description="description:get union, intersection or difference from two files")
parser.add_argument("-a",help="A.txt")
parser.add_argument("-b",help="B.txt")
parser.add_argument("--union",action='store_true',help="A or B")
parser.add_argument("--intersect",action='store_true',help="A and B")
parser.add_argument("--differ",action='store_true',help="only A or only B")
parser.add_argument("--onlyA",action='store_true',help="A Ture but B False")
parser.add_argument("-o",help="output.txt")
args=parser.parse_args()
with open(args.a,'rt') as f1:
    with open(args.b,'rt') as f2:
        with open(args.o,'wt') as f3:
            aset=set()
            bset=set()
            for aline in f1.readlines():
                a = aline.strip('\n')
                aset.add(a)
            for bline in f2.readlines():
                b = bline.strip('\n')
                bset.add(b)
            if args.union:
                for x in aset | bset:
                    print(x,file=f3)
            if args.intersect:
                for x in aset & bset:
                    print(x,file=f3)
            if args.differ:
                for x in aset ^ bset:
                    print(x,file=f3)
            if args.onlyA:
                for x in aset-bset:
                    print(x,file=f3)
