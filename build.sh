cd framework
aapt p -f -M ./AndroidManifest.xml -I /vendor/overlay/framework-res__auto_generated_rro_vendor.apk -S ./res/ -F ./unsigned_framework.apk 
../addon/zipsigner ./unsigned_framework.apk ./signed_framework.apk
cp ./signed_framework.apk ../magisk/system/product/overlay/
rm signed_framework.apk
rm unsigned_framework.apk

cd ../system_ui
aapt p -f -M ./AndroidManifest.xml -I /vendor/overlay/SystemUI__auto_generated_rro_vendor.apk  -S ./res/ -F ./unsigned_system_ui.apk 
../addon/zipsigner ./unsigned_system_ui.apk ./signed_system_ui.apk
cp ./signed_system_ui.apk ../magisk/system/product/overlay/
rm signed_system_ui.apk
rm unsigned_system_ui.apk

cd ../
cd magisk
zip -r ../magisk.zip ./
cp ../magisk.zip ~/storage/downloads/
