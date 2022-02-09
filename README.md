# McCleaner

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

<!-- PROJECT LOGO -->
<br />
<p align="center">
    <img src="IMG/McCleaner.png" alt="Logo" width="80" height="80">
  </a>

  <h3 align="center">McCleaner</h3>

  <p align="center">
    Welcome to McCleaner, use this toolkit to perform new Macbook setups or refresh models for new users !
    <br />
    <a href="https://github.com/VGW/uni-McCleaner/"><strong>Explore the Git Repo »</strong></a>
    <br />
    <br />
    ·
    <a href="https://github.com/VGW/uni-McCleaner/issues">Report Bug</a>
    ·
    <a href="https://github.com/VGW/uni-McCleaner/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Toolkit</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Payload Options</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
  </ol>
</details>



<!-- ABOUT THE TOOL -->
## About The Toolkit

This tool was created to save time on Macbook setups and create an quick and easy interface for support to utilise. The aim is to minimal interaction with the setup procedure and standardise the delivery of hardware to the end user. 


### Built With

This toolkit has been built and depends on various bit of software.
* [xcode](https://developer.apple.com/xcode/)
* [Homebrew](https://brew.sh/)
* [Dockutil](https://github.com/kcrawford/dockutil)



<!-- GETTING STARTED -->
## Payload Options

In the 'buildscript' you will find multiple options. 

Two of the key options are 

(1) Standard Payload - this is a requirement to use the other install methods in the list.

(u) Usb Install - this will not install the requirements for other isntall options.


These both will essentially install the same payload however, with different methods. 

If (1) is selected, xcode, homebrew and dockutil will be installed. This will require interaction for the first few steps then homebrew takes care of the rest.

If (u) is selected the files on your 'UNICORN' usb will be used to perform the install. This method is faster but depends on the latest repo to be on USB


### Installation

Assuming this in being run from a UNICORN usb anyway. We will cover the install from both options

1. Open your #McCleaner file located on your UNICORN usb

2. Double click #buildscript.sh to run the script
  
3. You will be greeted by the terminal menu 

  	########################################################################
    #                                                                      #
    #                                                                      #
    #                                                                      #
    # Choose what to do:                                                   #
    #                                                                      #
    #  (1) Install Standard Payload (ONLINE VERSION)                       #
    #  (2) Install Google Workspace Apps                                   #
    #  (3) Install Microsoft Apps                                          #
    #  (4) Install DevTool                                                 #
    #  (5) Empty Dock - Clears Everything From Dock                        #
    #  (6) Clear Default Dock - Append Payload Apps                        #
    #  (7) Install xcode                                                   #
    #  (n) Rename PC                                                       #
    #                                                                      #
    #                                                                      #
    ########################################################################
    #  (x)exit                 (u)usb install                  (r)reboot   #
    ########################################################################



4. Enter your install option 

    (1) Install Standard Payload - Install xcode, dockutil, homebrew, Homebrew installs Gapps, Webex, OpenVPN, Slack                    
    (2) Install Google Workspace Apps - re/Installs Gapps , requires (1)                               
    (3) Install Microsoft Apps - Installs MS Office , requires (1)                                        
    (4) Install DevTool - installs devtools (Visual Studio, Github, ChromeDevTools, MullvadVPN)                                               
    (5) Empty Dock - Clears Everything From Dock                       
    (6) Clear Default Dock - Append Payload Apps and remove default apps                       
    (7) Install xcode - incase of failure on first run                                             
    (n) Rename PC - Handy to rename Assets after install

    (u)usb install - will perform standard install from USB files                  
    (r)reboot - reboots pc
    (x)exit  -  exits application
