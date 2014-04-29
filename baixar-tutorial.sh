#!/bin/bash
# Author: Paulo Jerônimo (@paulojeronimo, pj@paulojeronimo.info)
#
# Referências úteis para o entendimentos deste script:
# 1 - http://tldp.org/LDP/abs/html/string-manipulation.html

[ "$TUTO_HOME" ] || \
{ echo "TUT_HOME não especificado!"; exit 1; }
source "$TUTO_HOME"/ambiente

# tag::clonagem[]
# Especifica o repositório de onde o tutorial é baixado
REPO=github.com/paulojeronimo/tutorial-git-github

# Cria o diretório que conterá $REPO e muda para ele
d="$TUTO_HOME"/${REPO%/*b}
mkdir -p "$d" && cd "$d"

# Faz o clone de $REPO
git clone https://$REPO.git
# end::clonagem[]

# tag::criacao[]
# Cria o diretório que conterá um novo repositório e muda para ele
# O nome desse repositório será o mesmo de $REPO + -executado
d="$TUTO_HOME"/github.com/$MEU_USUARIO/${REPO##g*/}-executado
mkdir -p "$d" && cd "$d"

# Copia alguns arquivos do repositório $REPO
cp -r "$TUTO_HOME"/$REPO/slides-no-github/* .
cp -r "$TUTO_HOME"/$REPO/{atributos.conf,build} .
# end::criacao[]

# tag::ajuste[]
# Ajusta os arquivos copiados para o $MEU_USUARIO
./ajustar-usuario.sh
# end::ajuste[]
