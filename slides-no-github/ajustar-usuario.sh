#!/bin/bash

source "$TUTO_HOME/ambiente"

sed_i() {
   local params=$@
   case `uname -a` in
      Darwin) sed_i=sed -i '' $params;;
      Linux) sed_i=sed -i $params;;
   esac
}

for f in *.asciidoc
do 
   sed_i "s/SEU_NOME/$SEU_NOME/g
   s/SEU_EMAIL/$SEU_EMAIL/g
   s/SEU_USUARIO/$SEU_USUARIO/g
   s/SEU_TWITTER/$SEU_TWITTER/g" $f
done
