
#!/bin/bash
#!/usr/bin/env bash



 #begin order menu

###############################################################################
# McClean3r > Menu > DevTools                                                 #
###############################################################################

#BIN=$HOME                               # shell scripts
#CONFIG=$HOME/McCleaner/config           # configuration files directory
#SETUP=$HOME/McClean3r                   # root folder of McClean3r

###############################################################################
# ^^ CONFIGURATION ^^                                                         #
###############################################################################

while :
do
    clear
    cat<<EOF
    ########################################################################
    #                           McClean3r                                  #
    #                         MENU>DevTools                          	   #
    ########################################################################
                                                                         
                                                                          
     Choose what to install:                                              
                                                                          
      (0) Install Slack
      (1) Install Visual Studio
      (2) Install Github
      (3) Install AWS Workspaces
      (4) Install OpenVPN
      (5) Install VNC Server 
                                                                          
                                                                          
    ########################################################################
      (x)exit                                                    
    ########################################################################
EOF
    read -n1 -s
    case "$REPLY" in

#######################################################
#START INSTALL OPTION
#######################################################
"0")  echo "Installing Slack" | 
sleep 1
brew install --cask slack
dockutil --add /Applications/Slack.app --no-restart
sleep 1
echo "Done !"

#end homebrew install

##############################################
 ;; #END INSTALL OPTION
##############################################
#######################################################
#START INSTALL OPTION
#######################################################
"1")  echo "Installing Visual Studio" | 
sleep 1
brew install --cask visual-studio-code
dockutil --add /Visual\ Studio.app --no-restart
sleep 1
echo "Done !"

#end homebrew install

##############################################
 ;; #END INSTALL OPTION
##############################################
#######################################################
#START INSTALL OPTION
#######################################################
"2")  echo "Installing Github" | 
sleep 1
brew install --cask github
dockutil --add /Github\ Desktop.app --no-restart
sleep 1
echo "Done !"

##############################################
 ;; #END INSTALL OPTION
##############################################
#######################################################
#START INSTALL OPTION
#######################################################
"3")  echo "Installing AWS Workspaces" | 
sleep 1
brew install --cask amazon-workspaces
dockutil --add /Applications/Amazon\ Workspaces.app --no-restart
sleep 1
echo "Done !"

##############################################
 ;; #END INSTALL OPTION
##############################################
#######################################################
#START INSTALL OPTION
#######################################################
"4")  echo "Installing OpenVPN" | 
sleep 1
brew install --cask openvpn-connect
dockutil --add /Applications/OpenVPN\ Connect.app --no-restart
sleep 1
echo "Done !"

##############################################
 ;; #END INSTALL OPTION
##############################################
#######################################################
#START INSTALL OPTION
#######################################################
"5")  echo "Installing VNC Server" | 
sleep 1
brew install --cask vnc-server
#Typically people dont pin this to the dock
#dockutil --add /Applications/OpenVPN\ Connect.app --no-restart
sleep 1
echo "Done !"

##############################################
 ;; #END INSTALL OPTION
##############################################

  
#put anything that needs to run at the end below this line
#things like customisations for enterprise can go here
#"c")  echo "Running Custom Stuff" | 
#sleep 1
####################CUSTOM STUFF BELOW THIS LINE########################
# STRONGLY RECOMMEND STICKY TO SIMPLE SCRIPT AND BREW TASKS HERE, BUT IT"S YOUR FUNERAL

#echo "For Example, download and append a custom background" ;
#sudo curl -L -o "$HOME/background.png" -k https://i.imgur.com/TJz1vM0.png ;
#osascript -e 'tell application "System Events" to tell every desktop to set picture to "$HOME/background.png"' ;

#brew install --cask spotify

#####################CUSTOM STUFF ABOVE THIS LINE#########################
#sleep 1
#echo "Done !"
#;;
#########################################################################

##############################################
# Exit option. do not change.
    "x")  exit    ;;
# Message for invalid selections                                                      
    * )  echo "Invalid option!"   ;;
##############################################

esac
  sleep 1
    killall cfprefsd
    #resets dock if anything has been added or taken away
    killall Dock

done