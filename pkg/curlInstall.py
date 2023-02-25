import os, sys
url = sys.argv[1]
name = url.split('/')[-1]

os.system("cd /tmp")
os.system("./curlInstall.sh " + url + " " + name)
os.system("cd -")
