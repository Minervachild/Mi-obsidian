#!/bin/bash
set -e

# Video settings
WIDTH=1080
HEIGHT=1920
FPS=30
DURATION=35  # Total video duration (voiceover is ~30s + end card)

# Input files
VOICEOVER="/data/.openclaw/workspace/sail/demo-assets/muhasib-voiceover-final.mp3"
OUTDIR="/data/.openclaw/workspace/sail/demo-assets"
OUTPUT="$OUTDIR/muhasib-demo-final.mp4"

cd "$OUTDIR"

echo "Creating video segments with zoompan effects..."

# Segment 1: Login screen (3s) - zoom in slightly
ffmpeg -loop 1 -i 01-login.png -vf "scale=1200:-1,zoompan=z='min(zoom+0.0015,1.2)':d=$FPS*3:x='iw/2-(iw/zoom/2)':y='ih/2-(ih/zoom/2)':s=${WIDTH}x${HEIGHT}:fps=$FPS" -t 3 -c:v libx264 -pix_fmt yuv420p seg1.mp4 -y

# Segment 2: Invoice table (6s) - Ken Burns effect (pan right + zoom)
ffmpeg -loop 1 -i 02-invoice-table.png -vf "scale=1300:-1,zoompan=z='min(1.0+0.001*on,1.15)':d=$FPS*6:x='iw/2-(iw/zoom/2)+on*2':y='ih/2-(ih/zoom/2)':s=${WIDTH}x${HEIGHT}:fps=$FPS" -t 6 -c:v libx264 -pix_fmt yuv420p seg2.mp4 -y

# Segment 3: Invoice list table (6s) - slow zoom out
ffmpeg -loop 1 -i 03-invoice-list-table.png -vf "scale=1400:-1,zoompan=z='if(lte(zoom,1.0),1.0,max(1.0,1.2-0.001*on))':d=$FPS*6:x='iw/2-(iw/zoom/2)':y='ih/2-(ih/zoom/2)':s=${WIDTH}x${HEIGHT}:fps=$FPS" -t 6 -c:v libx264 -pix_fmt yuv420p seg3.mp4 -y

# Segment 4: Invoice list clean (6s) - pan left + zoom
ffmpeg -loop 1 -i 04-invoice-list-clean.png -vf "scale=1300:-1,zoompan=z='min(1.0+0.0008*on,1.12)':d=$FPS*6:x='iw/2-(iw/zoom/2)-on*1.5':y='ih/2-(ih/zoom/2)':s=${WIDTH}x${HEIGHT}:fps=$FPS" -t 6 -c:v libx264 -pix_fmt yuv420p seg4.mp4 -y

# Segment 5: End card (5s) - static with slight zoom
ffmpeg -loop 1 -i 05-end-card.png -vf "scale=${WIDTH}:${HEIGHT},zoompan=z='min(1.0+0.0005*on,1.05)':d=$FPS*5:s=${WIDTH}x${HEIGHT}:fps=$FPS" -t 5 -c:v libx264 -pix_fmt yuv420p seg5.mp4 -y

echo "Concatenating segments..."

# Create concat file
cat > concat.txt << EOF
file 'seg1.mp4'
file 'seg2.mp4'
file 'seg3.mp4'
file 'seg4.mp4'
file 'seg5.mp4'
EOF

# Concatenate all segments
ffmpeg -f concat -safe 0 -i concat.txt -c copy video_temp.mp4 -y

echo "Adding voiceover and finalizing..."

# Add voiceover audio (loop if needed, fade out at end)
ffmpeg -i video_temp.mp4 -stream_loop -1 -i "$VOICEOVER" \
  -filter_complex "[1:a]afade=t=out:st=30:d=2[audio]" \
  -map 0:v -map "[audio]" \
  -c:v copy -c:a aac -b:a 192k \
  -shortest \
  "$OUTPUT" -y

echo "Cleaning up temporary files..."
rm -f seg*.mp4 video_temp.mp4 concat.txt

echo "✅ Video created successfully: $OUTPUT"
ls -lh "$OUTPUT"
