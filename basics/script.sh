#!/bin/bash
read -p "Enter the file name: " file
read -p "Enter the commad: " cmd

echo -e "#!/bin/bash\n${cmd}" > ${file}
chmod u+x ${file}

git add .
git commit -m "Added the file ${file}"
git push
