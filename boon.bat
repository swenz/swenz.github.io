powershell -c "Invoke-WebRequest -OutFile apktool.bat https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/windows/apktool.bat"
powershell -c "Invoke-WebRequest -OutFile apktool.jar https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.2.2.jar"

dir  /s /b *.apk | findstr /e .apk > tmpFile
SET /p apkFile= < tmpFile
DEL tmpFile

cmd /C apktool -f d "%apkFile%" -o app_disassembled

notepad app_disassembled\res\values\bools.xml

cmd /C apktool b app_disassembled/ -o app_modified.apk

keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -keysize 2048 -validity 10000 -storepass p@assw0rd -keypass p@assw0rd -dname "CN=Unknown, OU=Unknown, O=Unknown, L=Unknown, ST=Unknown, C=Unknown"
jarsigner -verbose -sigalg SHA1withRSA -digestalg SHA1 -keystore my-release-key.keystore app_modified.apk alias_name -storepass p@assw0rd

