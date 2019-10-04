echo $1

cd output 
ffmpeg -framerate 15 -i %d.png -qscale:v 0 ../$1.avi
cd ..
ffmpeg -i $1.avi -vf scale=1000:1000 $1.gif
rm $1.avi
cd output
rm *.png


