#!/bin/bash
EDITOR=nvim
BASEPATH=~/Documents/CV/cover_letters

STARTDIR=$PWD
SUBSTRING="${@:2}"
MDNAME=$1.md
DOCNAME=$1.docx

cd $BASEPATH
cp generic.md src/$1.md
cd src
sed -i "s/JOBTITLE/$SUBSTRING/g" $MDNAME
$EDITOR $MDNAME
xclip -selection clipboard $MDNAME
pandoc $MDNAME -o $DOCNAME
soffice --convert-to pdf $DOCNAME --outdir ~/Documents/CV/cover_letters 2> /dev/null

cd $STARTDIR
