#!/usr/bin/env bash
#--------HEADER--------#
#AUTOR
# Luis Fernando Alves de Lima <>
#
#PROGRAMA
# YouTube Video Downloader
#
#DESCRIÇÃO
# Programa que baixa vídeos do YouTube
#----------------------#

#------CONFIG------#
OUTPUT="~/Downloads/Videos"
URL=""
#------------------#

echo \
"---YouTube Video Downloader---
1)Insira a URL do vídeo:"

read URL

echo \
"Deseja alterar o local de Download?
Local padrão: $OUTPUT

1-Sim
2-Não"
read option

if [[ "$option" = 1 ]]; then
    echo "Insira o caminho desejado:
    Exemplo: ~/Downloads"
    read OUTPUT
fi

yt-dlp -o "$OUTPUT/%(title)s.%(ext)s" "$URL"
