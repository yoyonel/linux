echo
echo "Android"
echo "-------------"
echo
echo "Définition des variables d'environnements pour Android (SDK, NDK)"

export ANDROID_SDK=/home/latty/Android/Sdk
export ANDROID_NDK=/home/latty/__DEV__/__LOISIRS__/android-ndk-r10e

export ANDROIDPATH=$$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools

export PATH=$PATH:$ANDROIDPATH

echo "Set ANDROID_SDK to: $ANDROID_SDK"
echo "Set ANDROID_NDK to: $ANDROID_NDK"

echo "Add ANDROID_SDK, ANDROID_NDK to the ANDROIDPATH"
echo "Add ANDROIDPATH to the PATH"

