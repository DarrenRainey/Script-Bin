# USAGE ./FFMPEG-Record-M3u8-Stream.sh http://.../playlist.m3u8
ffmpeg -i $1 -c copy -bsf:a aac_adtstoasc output.mkv
