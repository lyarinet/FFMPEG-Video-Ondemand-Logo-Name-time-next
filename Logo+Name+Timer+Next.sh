files=`ls *.mp4 *.mkv`
for file in $files 
do
mkdir final
file_new=`echo $file | cut -d"." -f1`
ffmpeg -y -i $file -i logo.png -filter_complex "[1][0]scale2ref=w='iw*18/100':h='ow/mdar'[wm][vid];[vid][wm]overlay=x=main_w-overlay_w-(main_w*0.08):y=main_h*0.05" -hide_banner -sc_threshold 0 -pix_fmt yuv420p -strict -2 -vsync 2 -c:v h264 -preset:v superfast -movflags faststart -tune zerolatency -threads 2 final/$file_new-tmp.mp4
ffmpeg -y -i final/$file_new-tmp.mp4 -filter_complex "drawtext=text='${file%.*}':'fontsize=20:fontcolor=white@0.8:fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSerif.ttf:x=20:y=20" -hide_banner -sc_threshold 0 -pix_fmt yuv420p -strict -2 -vsync 2 -c:v h264 -preset:v superfast -movflags faststart -tune zerolatency -threads 2 final/$file_new-tmp2.mp4
rm -rf final/$file_new-tmp.mp4
ffmpeg -y -i final/$file_new-tmp2.mp4 -vf drawtext="fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSerif.ttf:text='%{pts\:gmtime\:0\:%H\\\\\:%M\\\\\:%S}':fontcolor=yellow:fontsize=18:x=8:y=h-th-8,format=yuv420p" -preset ultrafast -f mp4 final/$file_new-tmp3.mp4
rm -rf final/$file_new-tmp2.mp4
ffmpeg -y -i final/$file_new-tmp3.mp4 -filter_complex "drawtext=text='Next':'fontsize=54:fontcolor=white@0.8:box=1:boxcolor=black@0.75:boxborderw=16:fontfile=/usr/share/fonts/truetype/dejavu/DejaVuSerif.ttf:x=w-tw-20:y=h-th-20" -hide_banner -sc_threshold 0 -pix_fmt yuv420p -strict -2 -vsync 2 -c:v h264 -preset:v superfast -movflags faststart -tune zerolatency -threads 2 final/$file_new-Final.mp4
rm -rf final/$file_new-tmp3.mp4
done
