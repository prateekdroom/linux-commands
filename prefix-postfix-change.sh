===================================================
# Change postfix

$ cat mv.sh 
for f in *.export; do 
    mv -- "$f" "${f%.export}.json"  # (this will change the extension "export" with "json")
done


e.g.
$ cat mv.sh 
for f in *7feb.json; do 
    mv -- "$f" "${f%'7feb.json'}20190207_20190207000000_dly.json"
done
# This will rename/change the files ending with "7feb.json" to "20190207_20190207000000_dly.json"
===================================================
# Change Prefix


#!/bin/bash

for name in TestSR*
do
    newname=CL"$(echo "$name" | cut -c7-)"    # -c7- will cut first 7 words and replace
    mv "$name" "$newname"
done


e.g. 
$cat rename.sh 
#!/bin/bash

while read line
do

newname=test_metadata_"$(echo "clean_export-something-7feb.json" | cut -c14-)"
# This will cut the first 14 characters of the filename (clean_export-) and replace that with test_metadata_

mv "$line" "$newname"

done < "$1"

# where $1 is the file which is having all names to be renamed
# so the final command to run will be -> sh rename.sh file.txt

===================================================
