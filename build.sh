dirname=Ableton_Live_11_Lite
desktop=$(xdg-user-dir DESKTOP)
echo "Preparing the folder..."
mkdir ~/wol/Ableton_Live_11_Lite
echo "Installing all dependencies for Ableton Live 11 Lite and preparing all enviroments, Please wait..."
WINEARCH=win64 WINEPREFIX=~/wol/Ableton_Live_11_Lite winetricks d3dx9 dotnet35 dotnet452 dxvk gdiplusvcrun2019 corefonts tahoma vcrun6sp6
WINEARCH=win64 WINEPREFIX=~/wol/Ableton_Live_11_Lite winetricks win10
echo "Creating shortcut on your desktop, please don't open it until the installer finish its work"
cp ~/wol/Downloads/"AbletonLite"/startup.sh ~/wol/Ableton_Live_11_Lite
cp ~/wol/Downloads/"AbletonLite"/icon.png ~/wol/Ableton_Live_11_Lite
cp ~/wol/Downloads/"AbletonLite"/ableton.desktop $desktop
cd ~/wol/Ableton_Live_11_Lite/drive_c
echo "Downloading Ableton Live 11 Lite, this depends on your internet connection speed, Please wait..."
wget https://cdn-downloads.ableton.com/channels/11.1.5/ableton_live_lite_11.1.5_64.zip -O ~/wol/Ableton_Live_11_Lite/drive_c/ableton.zip
mkdir ~/wol/Ableton_Live_11_Lite/drive_c/ableton11_installer
echo "Unzipping Ableton Live 11 Lite..."
unzip ~/wol/Ableton_Live_11_Lite/drive_c/ableton.zip -d ~/wol/Ableton_Live_11_Lite/drive_c/ableton11_installer
echo "The installer is ready to run"
WINEARCH=win64 WINEPREFIX=~/wol/Ableton_Live_11_Lite wine ~/wol/Ableton_Live_11_Lite/drive_c/ableton11_installer/"Ableton Live 11 Lite Installer.exe"
echo "The installer is finished"
read -rsn1 -p"The installation is finished, Press any key to exit";echo
exit