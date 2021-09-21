#!/bin/sh

git clone --depth 1 https://github.com/OpenVisionE2/enigma2-openvision.git
mv -f po/*.po enigma2-openvision/po
cd enigma2-openvision
cd po
./updateallpo-multiOS.sh
mv -f *.po *.pot ..
cd ..
mv -f *.po *.pot ..
cd ..
rm -rf enigma2-openvision
mv -f *.po *.pot po

git add -u
git add *
git commit -m "Update po files using updateallpo-multiOS.sh using https://github.com/OpenVisionE2/enigma2-openvision"
