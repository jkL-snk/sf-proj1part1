mkdir tmp
cd tmp
wget -i ../url.txt
cd ..
rm *.html
cp ./tmp/* ./ -R
rm ./tmp/ -rf

