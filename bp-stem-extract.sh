#!/usr/bin/env bash

pathtofile=$1
filename=${pathtofile##*/}
mkdir ./${filename}_tmp
cd ${filename}_tmp
ffmpeg -i $pathtofile -acodec copy -map 0:a? \
       -f tee \
              "[select='a\:0':onfail=ignore]track-0.aac|[select='a\:1':onfail=ignore]track-1.aac|
               [select='a\:2':onfail=ignore]track-2.aac|[select='a\:3':onfail=ignore]track-3.aac|
               [select='a\:4':onfail=ignore]track-4.aac|[select='a\:5':onfail=ignore]track-5.aac|
               [select='a\:6':onfail=ignore]track-6.aac|[select='a\:7':onfail=ignore]track-7.aac|
               [select='a\:8':onfail=ignore]track-8.aac|[select='a\:9':onfail=ignore]track-9.aac|
               [select='a\:10':onfail=ignore]track-10.aac|[select='a\:11':onfail=ignore]track-11.aac|
               [select='a\:12':onfail=ignore]track-12.aac|[select='a\:13':onfail=ignore]track-13.aac|
               [select='a\:14':onfail=ignore]track-14.aac|[select='a\:15':onfail=ignore]track-15.aac|
               [select='a\:16':onfail=ignore]track-16.aac|[select='a\:17':onfail=ignore]track-17.aac|
               [select='a\:18':onfail=ignore]track-18.aac|[select='a\:19':onfail=ignore]track-19.aac|
               [select='a\:20':onfail=ignore]track-20.aac|[select='a\:21':onfail=ignore]track-21.aac|
               [select='a\:22':onfail=ignore]track-22.aac|[select='a\:23':onfail=ignore]track-23.aac"
#wait($!)
##todo delete all 0kb file
for i in *; do
  if [ -s $i ]
  then
    echo keeping $i
  else
    echo removing $i
    rm $i
  fi
done

cd ../
zip -r ${filename}_stems.zip ${filename}_tmp/*
rm -r ${filename}_tmp
#wait($!)
