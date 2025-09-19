#! /bin/sh

echo "Enter target file number"
read fileName

echo "Enter start time"
read startTime

echo "Enter end time"
read endTime

ffmpeg -i h-0.webm -ss $startTime -to $endTime -c copy $fileName-Hangul.webm

ffmpeg -i $fileName-Hangul.webm $fileName-Hangul.mp3

rm $fileName-Hangul.webm

cvlc $fileName-Hangul.mp3 &

eza --oneline --color auto
