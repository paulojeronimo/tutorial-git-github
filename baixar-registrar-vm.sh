#!/bin/bash
# Author: Paulo Jerônimo (@paulojeronimo, pj@paulojeronimo.info)

# Muda para o diretório das VMs do VirtualBox
cd ~/VirtualBox\ VMs/

# Baixa e executa um script que faz o download da VM
bash <(curl -L http://j.mp/vm-fedora-download)

# Utiliza o 7zip para descompactar todos os arquivos baixados
7za x vm-fedora.7z.001

# Registra a VM
VBoxManage registervm "$PWD/vm-fedora/vm-fedora.vbox"

# Gera o snapshot inicial de pós instalação
VBoxManage snapshot vm-fedora take fedora-pos-install

# Inicia a VM
VBoxManage startvm vm-fedora
