#!/bin/bash

CODEBANK[0]=`cat Real-Code.js`
CODEBANK[1]=`cat More-Real-Code.js`
CODEBANK[2]=`cat Maybe-Fake-Code.js`

RAND=`shuf -i 0-2 -n 1`

${CODEBANK[RAND]} >> Real-Code.js

git add .
git commit -m 'super important commit'
git push origin main
