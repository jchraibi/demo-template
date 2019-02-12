#!/bin/bash
echo "----------------------------------------------------------------" >> /tmp/template.txt
echo "Applying modifications for template $2 " >> /tmp/template.txt
oc get template $2 -o yaml > orange.yaml
git add .
git commit -m "modified template $2"
git push -u origin master
oc process $2 | oc apply -f - >> /tmp/template.txt
echo "Finished applying modifications" >> /tmp/template.txt
echo "----------------------------------------------------------------" >> /tmp/template.txt

