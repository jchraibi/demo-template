#!/bin/bash
echo "----------------------------------------------------------------" >> /tmp/template.txt
echo "Applying modifications for template $2 " >> /tmp/template.txt
oc process $2 | oc apply -f - >> /tmp/template.txt
echo "Finished applying modifications" >> /tmp/template.txt
echo "----------------------------------------------------------------" >> /tmp/template.txt

