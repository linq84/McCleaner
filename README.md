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

The key options are 

(1) Standard Payload - this version will download the apps from source and install them

(2) Homebrew install - the version will install via homebrew


These both will essentially install the same payload however, with different methods. 

If (2) is selected, xcode, homebrew and dockutil will be installed. This will require interaction for the first few steps then homebrew takes care of the rest.

If (1) is selected the files will be downloaded to a folder called Apps and it will be used to perform the install. This is a good option to
        make McCleaner usbs



### Installation

Assuming this in being run from a McCleaner usb anyway. We will cover the install from both options

1. Open your McCleaner USB on your Mac

2. Double click #buildscript.sh to run the script
  
3. You will be greeted by the terminal menu 

  	<img width="553" alt="image" src="https://user-images.githubusercontent.com/13390505/167660281-d6cdf7d3-bc2d-465c-be21-00e1c01d4ce3.png">

    


4. Enter your install option 

   

    (u)update - will perform standard update to the working directory                  
    (r)reboot - reboots pc
    (x)exit  -  exits application
# McCleaner

Creating a Simple little 'cleaner' to setup your macbook in a flash.
#
Simply run this command in terminal :

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/linq84/McCleaner/main/start)"
