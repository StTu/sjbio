jekyll build --destination  /vol/websites/sjbio
cpwd=pwd
cd /vol/websites/sjbio
cd Publications/
mogrify -resize 200x -format png */*.png
mogrify -resize 200x -format png */*.jpg
cd ..
git add *
val=date
git commit -m "$val"
git push
cd pwd
