for file in `\find . -name '*.MOV'`; do
  ffmpeg -i $file -r 2 -qmin 1 -q 1 -f image2 $file-%06d.jpg
done
