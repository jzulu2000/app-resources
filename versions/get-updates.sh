touch app-resources/versions/updates-index.json
find app-resources -name *.json | awk '{print "\"" $0 "\""}' | xargs ls -ltr --time-style="+%Y-%m-%d %H:%M:00" | awk '{print $8 " " $6 " " $7}' | awk -F "/" '{print $3}' | sort | uniq | awk '{print "\"" $1 "\" : " "\"" $2 " " $3 "\","}'
