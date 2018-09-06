import yaml
import os
import sys

if len(sys.argv) > 1:
    filename1 = sys.argv[1]
else:
    exit()
    
outfile1 = filename1.replace(".bib",".yaml")

def createFolder(directory):
    try:
        if not os.path.exists(directory):
            os.makedirs(directory)
    except OSError:
        print ('Error: Creating directory. ' +  directory)

os.system('pandoc-citeproc --bib2yaml ' + filename1 + ' > ' + outfile1)
        
stream1 = file(outfile1)

refs = yaml.load(stream1)

if len(sys.argv) > 2:
    filename2 = sys.argv[2]
    stream2 = file(filename2)

    refsextra = yaml.load(stream2)
else:
    refsextra = {}
    

for ref in refs["references"]:
    idstr = ref["id"]
    print(idstr)
    # id is already used as front matter in Jekyll...
    ref.update({"ref-id": idstr})
    del ref["id"]
    # clean up issued stuff...
    if "issued" in ref:
        for el in ref["issued"]:
            ref.update(el)            
        del ref["issued"]

    if idstr in refsextra:
        ref.update(refsextra[idstr])

    dirstr = "../../_publications/" + idstr
    createFolder(dirstr)

    filestr = dirstr + "/" + idstr + ".md"
    with open(filestr, 'w+') as f:
        f.write("---\n")
        f.write("layout: publication\n")
        yaml.dump(ref,f,default_flow_style=False)
        f.write("---")
        

with open(filename1) as myfile:
    data = myfile.read()

items = str.split(data,"@")
items = items[1:]

for item in items:
    item = "@" + item
    i1=item.index("{")
    i2=item.index(",")
    idstr = item[i1+1:i2]
    createFolder("./bib")
    filestr = "./bib/" + idstr + ".bib"
    with open(filestr,'w+') as pubfile:
        print>> pubfile, item

