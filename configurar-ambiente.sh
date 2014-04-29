#!/bin/bash
# Author: Paulo Jerônimo (@paulojeronimo, pj@paulojeronimo.info)

# Variável indicando o local onde esse tutorial é executado
export TUTO_HOME=~/'tutorial de git e github'

# Cria o diretório desse tutorial
mkdir -p "$TUTO_HOME"

# Cria o arquivo ambiente, contendo meus dados
cat > "$TUTO_HOME"/ambiente <<'EOF'
export MEU_NOME='Paulo Jerônimo'
export MEU_EMAIL=paulojeronimo@gmail.com
export MEU_USUARIO_NO_GITHUB=paulojeronimo
export MEU_USUARIO_NO_TWITTER=paulojeronimo
EOF

# Configura o arquivo ~/.bashrc para carregar o arquivo ambiente
s="source ~/\"$TUTO_HOME\"/ambiente"; f=~/.bashrc
grep "^$s" $f > /dev/null || echo "$s" >> $f
