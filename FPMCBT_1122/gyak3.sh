#!/in/bash
read -p "Irja be a nevet: " n
read -p "Irja be a telefonszamat: " p
echo "{" > fpmcbt.json
echo -n '"name" : "' >> fpmcbt.json
echo -n "$n" >> fpmcbt.json
echo '",' >> fpmcbt.json
echo -n '"phone" : "' >> fpmcbt.json
echo -n "$p" >> fpmcbt.json
echo '"' >> fpmcbt.json
echo  "}" >> fpmcbt.json
