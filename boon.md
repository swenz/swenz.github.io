## Run boon on rooted or uncertified device

Tis tutorial describes how you can run the boon Android App on a rooted or a device which is not certified by MasterCard. We use reverse engeneering to disable certain checks within the boon App. The provided tutorial and script only works on Windows.

1. Install Java on your PC.
2. Download the automation [script](boon.bat).
3. Download the boon apk (e.g. [here](https://www.google.de/search?q=boon+apk)) and place it in the same directory as the script.
4. Run the script.bat with a double click.
5. The script will need some time to download necessary dependencies, at some pint in time notepad will open
6. Now you have to choose which checks you want to deactivate within the boon app.
6.1. If you want to run the App on a rooted device, search for <bool name="root_check_enabled">true</bool> and replace true with false.
6.2. If you want to run the App on a uncertified device, search for <bool name="whitelist_enabled">true</bool> and replace true with false.
7. Copy the app_modified.apk file to your Android device and install it.
