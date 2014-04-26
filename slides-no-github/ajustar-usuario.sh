#!/bin/bash

source "$TUTO_HOME/ambiente"

case `uname -a` in
   Darwin) sed_i='sed -i ""';;
   Linux) sed_i='sed -i';;
esac

for f in *.asciidoc
do 
   $sed_i "s/SEU_NOME/$SEU_NOME/g
   s/SEU_USUARIO/$SEU_USUARIO/g
   s/SEU_TWITTER/$SEU_TWITTER/g" $f
done
