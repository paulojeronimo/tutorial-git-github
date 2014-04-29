#!/bin/bash
# Author: Paulo Jerônimo (@paulojeronimo, pj@paulojeronimo.info)

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
   sed_i "
   s/MEU_NOME/$MEU_NOME/g
   s/MEU_EMAIL/$MEU_EMAIL/g
   s/MEU_USUARIO_NO_GITHUB/$MEU_USUARIO_NO_GITHUB/g
   s/MEU_USUARIO_NO_TWITTER/$MEU_USUARIO_NO_TWITTER/g
   " $f
done
