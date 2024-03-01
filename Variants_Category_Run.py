#!/usr/bin/python3
import getopt, sys, os

opts, args = getopt.getopt(sys.argv[1:], 'o:c:s:i:b:h')
compare = outputDir = bed_file = scripts = breed = None

for option, value in opts:
    if option in '-o':
        outputDir = value
    elif option in '-c':
        compare = value
    elif option in '-s':
        scripts = value
    elif option in '-i':
        bed_file = value
    elif option in '-b':
        breed = value
    elif option in '-h':
        usage()
        sys.exit()

def usage():
    info = '-o outDir: 输出路径\n-c compare.py: compare.py脚本路径\n' \
           '-i bed_file: bed文件及路径\n-s scripts: .sh脚本路径\n-b breed: 物种名称\n-h #get helpinfo'
    print(sys.argv[0] + info)

def SnpCategory(param_lst):
    os.system(param_lst)

res_lst = str(scripts + " " + compare + " " + outputDir + " " + bed_file + " " + breed)
#print(res_lst)
SnpCategory(res_lst)

