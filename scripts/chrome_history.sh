#! /bin/sh
file="_google_chrome_history"
# why? source file is locked while using browser.
cp ~/.config/google-chrome/Default/History $file
sqlite3 $file "select url,title from urls"
rm $file

