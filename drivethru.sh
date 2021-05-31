#!/bin/bash
#!/usr/bin/env bash


echo "Welcome to McClean3r"
sleep 3
echo "Use this tool to clean up your MacOS"
sleep 1
echo "Install the apps you need and clean out the stuff you don't"
sleep 3


 #begin order menu

###############################################################################
# Set variables                                                               #
###############################################################################

BIN=$HOME                               # shell scripts
CONFIG=$HOME/McCleaner/config           # configuration files directory
SETUP=$HOME/McClean3r                   # root folder of McClean3r

###############################################################################
# Menu                                                                        #
###############################################################################

while :
do
    clear
    cat<<EOF
    ########################################################################
    #                           McClean3r                                  #
    #                              MENU                                    #
    ########################################################################
    #        *INSTALL REQUIRED STUFF BEFORE USING CHOICES BELOW*           #
    #                  TO INSTALL REQUIRMENTS PRESS (0)                    #
    #                                                                      #
    #                                                                      #
    # Choose what to do:                                                   #
    #                                                                      #
    #  (1) Install Microsoft 365                                           #
    #  (2) Install Google Workspace Apps                                   #
    #  (3) Install Google & Microsoft Apps                                 #
    #  (4) DevTools                                                        #
    #  (5) Empty Dock - Clears Everything From Dock                        #
    #  (6) Clear Default Dock - Clears Default Mac Apps from dock          #
    #                                                                      #
    #                                                                      #
    ########################################################################
    #  (x)exit                                                 (r)reboot   #
    ########################################################################
EOF
    read -n1 -s
    case "$REPLY" in

#######################################################
#REQUIRED SOFTWARE DO NOT EDIT
#######################################################
"0")  echo "Getting Required Software, Hold Tight" | 
sleep 1
echo "We're going to install some required software first (xcode,brew,dockutil)"
sleep 1
# DocKUtil - Used to edit dock through cli, required.
    echo "We need permission to install things"

 sudo curl -L -o "$HOME/dockutil.pkg" -k https://github.com/kcrawford/dockutil/releases/download/2.0.5/dockutil-2.0.5.pkg ;
 sleep 1
 echo " Installing Dockutil "

    sudo installer -pkg $HOME/dockutil.pkg -target "/" ;
sleep 1
    echo "DockUtil Installed"



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
#end homebrew install


echo  "Installing McClean3r" 
sleep 2
 sudo curl -L -o "$HOME/McClean3r" -k https://raw.githubusercontent.com/linq84/McClean3r/main/drivethru.sh
 sudo chmod +x $HOME/McClean3r
 wait 
 sleep 2 
 dockutil --add $HOME/McClean3r --label 'McClean3r' --after Downloads --allhomes

##############################################
 ;; #END REQUIREMENTS
##############################################

##############################################

#Start option 1 below here

    "1")  echo "Installing Microsoft Apps" | 
         brew install --cask microsoft-office 
        dockutil --add /Applications/OneDrive.app --no-restart
        dockutil --add /Applications/Microsoft\ Outlook.app --no-restart
        dockutil --add /Applications/Microsoft\ Word.app --no-restart
        dockutil --add /Applications/Microsoft\ Excel.app --no-restart
        dockutil --add /Applications/Microsoft\ Powerpoint.app --no-restart
        echo "Your software has been installed"  

;; #End option 1 above here        

##############################################          

#Start option 2 below here

    "2")  echo "Installing Google Apps" | 
         brew install --cask google-drive
        brew install --cask chrome-remote-desktop-host
        brew install --cask google-chrome        
        dockutil --add /Applications/Google\ Chrome.app --allhomes --no-restart
        dockutil --add /Applications/Google\ Drive.app --no-restart
        dockutil --add /Applications/Google\ Docs.app --no-restart  
        dockutil --add /Applications/Google\ Sheets.app --no-restart
        echo "Your software has been installed"  

;; #End option 2 above here

##############################################

#Start option 3 below here

    "3")  echo "Installing both Google & Microsoft Apps" | 

        brew install --cask microsoft-office
        brew install --cask google-drive
        brew install --cask chrome-remote-desktop-host
        brew install --cask google-chrome        
        dockutil --add /Applications/Google\ Chrome.app --no-restart
        dockutil --add /Applications/Google\ Chrome.app --allhomes --no-restart
        dockutil --add /Applications/Google\ Drive.app --no-restart
        dockutil --add /Applications/Google\ Docs.app --no-restart  
        dockutil --add /Applications/Google\ Sheets.app --no-restart
        dockutil --add /Applications/Google\ Drive.app --no-restart
         dockutil --add /Applications/OneDrive.app --no-restart
        dockutil --add /Applications/Microsoft\ Outlook.app --no-restart
        dockutil --add /Applications/Microsoft\ Word.app --no-restart
        dockutil --add /Applications/Microsoft\ Excel.app --no-restart
        dockutil --add /Applications/Microsoft\ Powerpoint.app --no-restart


 ;; #End option 3 above here

##############################################

#Start option 4 below here

    "4") echo  "Installing DevTools" | 
sleep 2
echo " You will need to input your password in a new window"
sleep 2
 sudo curl -L -o "$HOME/bigmac.sh" -k https://raw.githubusercontent.com/linq84/McClean3r/main/bigmac.sh
 sudo chmod +x $HOME/bigmac.sh
 wait 
 sleep 2 
 echo "Opening DevTools...."
 sleep 3
osascript -e 'tell app "Terminal"
    do script "$HOME/bigmac.sh"
end tell'

;; #End Option 4 above here

##############################################

#Start option 5 below here

    "5") echo  "Emptying the Dock" |

    dockutil --remove all --no-restart
    
 ;; #End option 5 above here

##############################################

#Start option 6 below here

    "6") echo  "Emptying the Dock" |

    sleep 3

echo "Removing default mac apps from the dock"

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
sleep 2

echo "All Done"
    
 ;; #End option 6 above here

 ##############################################


#Start option RESTART below here

    "r") echo  "We're going to reboot now" |

 osascript -e 'tell app "loginwindow" to «event aevtrrst»'
    
 ;; #End option RESTART above here

 ##############################################


##############################################
# Exit option. do not change.
    "x")  exit    ;;
# Message for invalid selections                                                      
     * )  echo "Invalid option!"   ;;
##############################################

esac

#this bit will run after every selection is made


    sleep 1
    killall cfprefsd
    #resets dock if anything has been added or taken away
    killall Dock
#put anything that needs to run at the end below this line
#things like customisations for enterprise can go here
####################CUSTOM STUFF BELOW THIS LINE########################

#echo "For Example, download and append a custom background" ;
#sudo curl -L -o "$HOME/background.png" -k https://i.imgur.com/TJz1vM0.png ;
#osascript -e 'tell application "System Events" to tell every desktop to set picture to "~/background.png"' ;


#####################CUSTOM STUFF ABOVE THIS LINE#########################
done


 
# Templates for furthering this code


 #create download - follow convention, look at dockutil as an example
 #Decsribe for dev
 #Echo to console
 #curl link for download

 #echo " Downloading things we need " 
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



