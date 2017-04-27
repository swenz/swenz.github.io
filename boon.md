## Run boon on rooted or uncertified device

This tutorial describes how you can run the boon Android App on a rooted or a device which is not certified by MasterCard. We use reverse engineering to disable certain checks within the boon App. The provided tutorial and script only works on Windows.

1. Install Java on your PC.
2. Download the automation [script](boon.bat).
3. Download the boon apk (e.g. [here](https://www.google.de/search?q=boon+apk)) and place it in the same directory as the script.
4. Run the boon.bat with a double click.
5. The script will need some time to download necessary dependencies, at some point in time notepad will open.
6. Now you have to choose which checks you want to deactivate within the boon app.
    * If you want to run the App on a rooted device, search for *&lt;bool name="root_check_enabled"&gt;true&lt;/bool&gt;* and replace true with false.
    * If you want to run the App on a uncertified device, search for *&lt;bool name="whitelist_enabled"&gt;true&lt;/bool&gt;* and replace true with false.
7. Afterwards save and close the file, the script will automatically continuous to run.
8. Copy the generated app_modified.apk file to your Android device and install it.

## Sync transactions between N26 and boon
Currently I'm developing a iPhone App to sync transactions between N26 and boon. The idea is that every time you make a boon transaction a automated transfer to your boon account is made with the correct amount and description, the benefit of it that you don't destroy your N26 transaction log and statistics.
