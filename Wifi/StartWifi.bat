cd ../..
adb devices
adb tcpip 5555
timeout 3
adb shell ip addr show wlan0

setlocal
:: Ask for IP address
set /p ip_address="Enter the IP address of the Android device: "
:: Use ADB to connect to the device
adb connect %ip_address%
timeout 3
adb devices
timeout 10