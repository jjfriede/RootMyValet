#!/system/bin/sh
# This here by Unkn0wn0ne for use in RootMyValet
echo RootMyValet root script for Android devices v1.0.3
# karmmisht and mainefungi
# Slightly modified by Unkn0wn0ne for use in root my valet
/system/bin/busybox telnet 127.0.0.1 23 <<EOF
/system/bin/busybox stty -echo ; sleep 2; 
/system/bin/busybox su ; sleep 2; 
/system/bin/busybox busybox mount -o rw,remount /system ; sleep 2; 
/system/bin/busybox busybox cp /sdcard/su /system/xbin/su ; sleep 2; 
/system/bin/busybox busybox chmod 06755 /system/xbin/su ; sleep 2; 
/system/bin/busybox ln -s /system/xbin/su /system/bin/su ; sleep 2; 
/system/bin/busybox pkill telnetd ; sleep 2 
EOF

if [ -f /system/xbin/su ]; then
    echo "\nsu successfully copied into /system/xbin"
else
    echo "\nfailed to copy su into /system/xbin"
fi
