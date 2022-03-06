cat 03_Bibliography.bib | grep -o '{[a-zA-Z]\+://[a-zA-Z.-]*[^}]\+}' | sed s/{// | sed s/}// | while read LINE; do
   curl -o /dev/null --silent --head --write-out '%{http_code}' "$LINE"
   echo " $LINE"
 done
