aapt p -f -M ./AndroidManifest.xml -I /system/framework/framework-res.apk -S ./res/ -F ./unsigned.apk 
./addon/zipsigner ./unsigned.apk ./signed.apk
cp ./signed.apk ./magisk/system/product/overlay/
cd magisk
zip -r ../magisk.zip ./
rm ./../signed.apk
rm ./../unsigned.apk
