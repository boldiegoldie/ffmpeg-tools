#!/bin/bash
for i in *.mp4;
  do name=`echo "$i" | cut -d'.' -f1`
  echo "$name"
  ffmpeg -i "$i" -map 0:v -map -0:V -c copy "${name}.jpg"
done
#/usr/sbin/shutdown -h now

