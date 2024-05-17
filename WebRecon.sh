#!/bin/bash
echo " __          __  ____    _____       _____      _   _ "
echo " \ \        / / |  _ \  |  __ \     / ____|    | \ | |"
echo "  \ \  /\  / /__| |_) | | |__) |___| |     ___ |  \| |"
echo "   \ \/  \/ / _ \  _ <  |  _  // _ \ |    / _ \| . \ |"
echo "    \  /\  /  __/ |_) | | | \ \  __/ |___| (_) | |\  |"
echo "     \/  \/ \___|____/  |_|  \_\___|\_____\___/|_| \_|"

echo "===========================WeB ReCoN============================"
for palavra in $(cat lista2.txt)
do
  resposta=$(curl -s -H "User-Agent: Opera-mini" -o /dev/null -w "%{http_code}" $1/$palavra/)
  if [ $resposta == "200" ]
  then
    echo "Diretorio encontrado: $1/$palavra/  <== encontrado"
  fi
done

echo "==========================Arquivos==============================="

for arquivos in $(cat arq.txt)
do
  resposta2=$(curl -s -H "User-Agent: Opera-mini" -o /dev/null -w "%{http_code}" $1/$arquivo)
  if [ $resposta2 == "200" ]
  then
    echo "Arquivos encontrado: $1/$arquivos  <== encontrado"
  fi
done

echo "=========================Conluido================================"


