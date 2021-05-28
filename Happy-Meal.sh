#!/bin/bash
#!/usr/bin/env bash
# installhb.sh

echo "We hope you enjoy your Happy Meal!"
sleep 3



# install xcode
 xcode-select --install > /dev/null 2>&1
if [ 0 == $? ]; then
    sleep 1
    osascript <<EOD
tell application "System Events"
    tell process "Install Command Line Developer Tools"
        keystroke return
        click button "Agree" of window "License Agreement"
    end tell
end tell
EOD
else
    echo "Command Line Developer Tools are already installed!"
fi

# install homebrew

URL_BREW='https://raw.githubusercontent.com/Homebrew/install/master/install'

echo -n '- Installing brew ... '
echo | /usr/bin/ruby -e "$(curl -fsSL $URL_BREW)" > /dev/null
if [ $? -eq 0 ]; then echo 'OK'; else echo 'NG'; fi


  # DocKUtil - Used to edit dock through cli, required.
 echo " Dockutil "
 sudo curl -L -o "$HOME/dockutil.pkg" -k https://github.com/kcrawford/dockutil/releases/download/2.0.5/dockutil-2.0.5.pkg ;
	sudo installer -pkg $HOME/dockutil.pkg -target "/" ;
    echo "Dock Utlitiy Installed"
 #install casks and apps here



#give a choice over google or microsoft apps
read -n 1 -p "You can choose to install Google Apps(g), Microsoft(m), Both(b)  or  None(n) " ans;

case $ans in
    g|G)
        brew install --cask google-drive
        brew install --cask chrome-remote-desktop-host
        brew install --cask google-chrome

        dockutil --add /Applications/Google\ Chrome.app --allhomes --no-restart
		dockutil --add /Applications/Google\ Drive.app --allhomes --no-restart
		dockutil --add /Applications/Google\ Docs.app --allhomes --no-restart
		;;

    m|M)
        brew install --cask microsoft-office 
        dockutil --add /Applications/Microsoft\ Word.app --allhomes --no-restart
		dockutil --add /Applications/Microsoft\ Excel.app --allhomes --no-restart
		;;

    b|B)
        brew install --cask microsoft-office
		brew install --cask google-drive
        brew install --cask chrome-remote-desktop-host
        brew install --cask google-chrome        dockutil --add /Applications/Google\ Chrome.app --allhomes --no-restart
		dockutil --add /Applications/Google\ Drive.app --allhomes --no-restart
		dockutil --add /Applications/Google\ Docs.app --allhomes --no-restart
		dockutil --add /Applications/Microsoft\ Word.app --allhomes --no-restart
		dockutil --add /Applications/Microsoft\ Excel.app --allhomes --no-restart
        ;;
    *)
        echo "none it is";;
esac
 

 #create download list here, follow convention, look at dockutil as an example
 echo " Downloading things we need " 
 #list below

 # DocKUtil - Used to edit dock through cli, required.
 # echo " Dockutil "
 # sudo curl -L -o "$HOME/temp/dockutil.pkg" -k https://github.com/kcrawford/dockutil/releases/download/2.0.5/dockutil-2.0.5.pkg ;

#start installing one by one

#pkg template - 
# sudo installer -pkg $HOME/temp/dockutil.pkg -target "/" ;
#    echo "Dock Utlitiy Installed"


#DMG template - 
# echo " installing Chrome "
# hdiutil mount googlechrome.dmg
# sudo cp -r /Volumes/Google\ Chrome/Google\ Chrome.app /Applications/
# hdiutil unmount /Volumes/Google\ Chrome

 

  

sleep 3

echo "Cleaning the place up a bit.."

cp $HOME/temp/VGW_Wallpaper.png ~/
dockutil --remove 'Mail' --allhomes --no-restart
dockutil --remove 'Maps' --allhomes --no-restart
dockutil --remove 'Reminders' --allhomes --no-restart
dockutil --remove 'iBooks' --allhomes --no-restart
dockutil --remove 'FaceTime' --allhomes --no-restart
dockutil --remove 'App Store' --allhomes --no-restart
dockutil --remove 'iTunes' --allhomes --no-restart
dockutil --remove 'Messages' --allhomes --no-restart
dockutil --remove 'Contacts' --allhomes --no-restart
dockutil --remove 'Safari' --allhomes --no-restart
dockutil --remove 'News' --allhomes --no-restart
dockutil --remove 'Launchpad' --allhomes --no-restart
dockutil --remove 'Photos' --allhomes --no-restart
dockutil --remove 'Music' --allhomes --no-restart
dockutil --remove 'Calendar' --allhomes --no-restart
dockutil --remove 'Notes' --allhomes --no-restart
dockutil --remove 'TV' --allhomes --no-restart
dockutil --remove 'Podcasts' --allhomes --no-restart

dockutil --add /Applications/Google\ Chrome.app --allhomes --no-restart
dockutil --add /Applications/Google\ Drive.app --allhomes --no-restart
dockutil --add /Applications/Google\ Docs.app --allhomes --no-restart
dockutil --add /Applications/Slack.app --allhomes --no-restart

echo "Cleaning up the mess !"




sleep 3


sudo rm -R $HOME/temp
killall cfprefsd
killall Dock

echo "Clean as a whislte. "

sleep 3

echo " We're going to reboot now."

osascript -e 'tell app "loginwindow" to «event aevtrrst»'
