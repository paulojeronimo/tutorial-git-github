#!/bin/bash
set -x
source "$TUTO_HOME/ambiente"

sed_i() {
   local comandos=$1
   local arquivo=$2
   case `uname` in
      Darwin) sed -i '' "$comandos" $arquivo;;
      Linux) sed -i "$comandos" $arquivo;;
   esac
}

for f in *.asciidoc
do 
   sed_i "s/SEU_NOME/$SEU_NOME/g
   s/SEU_EMAIL/$SEU_EMAIL/g
   s/SEU_USUARIO/$SEU_USUARIO/g
   s/SEU_TWITTER/$SEU_TWITTER/g" $f
done
