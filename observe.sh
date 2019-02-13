#!/bin/bash
oc observe template -a '{.labels.template}' -- /Users/jchraibi/2019/clients/orange/watch_template.sh
