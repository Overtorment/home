#export ANDROID_HOME=$HOME/Android/Sdk
#export ANDROID_SDK_ROOT="/home/overtorment/Android/Sdk/"

cd ~/Android/Sdk/emulator
./emulator -list-avds
#./emulator -avd fukken_PIE -logcat-output /dev/stdout  -camera-front webcam0  -camera-back  webcam0 | grep -v GnssLocationProvider | ack --passthru "ReactNative|AndroidRuntime"
#./emulator -avd Pixel_5_API_30  -logcat-output /dev/stdout  -camera-front webcam0  -camera-back  webcam0 -partition-size 2047  -gpu swiftshader_indirect  -noaudio -no-boot-anim -no-snapshot-load  | egrep -v 'GnssLocationProvider|GnssHAL_GnssInterface' | tee emulator.log |  ack --passthru "ReactNative|AndroidRuntime|GoLog"

while [ 1 ] ; do
  ./emulator -avd New_Device_64_API_api32  -logcat-output /dev/stdout -logcat '*:i'  -camera-front webcam0  -camera-back webcam0 -partition-size 2047  -noaudio -no-boot-anim -no-snapshot-load  | egrep -v 'GnssLocationProvider|GnssHAL_GnssInterface' | tee emulator.log |  ack --passthru "ReactNative|AndroidRuntime|GoLog"
done


