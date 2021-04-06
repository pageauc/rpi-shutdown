# rpi-shutdown

## Purpose
Safely shutdown (halt) Raspberry pi using a normally open momentary switch

## Hardware Requirements
Requires one small normally open momentary push button switch 
and two short insulated wires.  

## Instructions
Mount switch and Connect each wire per below.

* Connect control wire from one switch terminal to RPI GPIO control pin 5   (default)  
* Connect ground wire from second switch terminal to RPI GPIO ground pin 6 (default)  
or 
set gpio_pin variable by editing shutdown.py and setting gpio_pin = variable to desired control pin, then connect control wire as appropriate

***Note:*** If desired set button_hold_sec variable by editing shutdown.py and changing button_hold_sec = variable
to desired number of seconds required to hold down momentary switch before RPI halt action is taken.    
default is 2 seconds.  0=No delay

## Software Install

### Easy Install

***Step 1*** With mouse left button highlight curl command in code box below. Right click mouse in highlighted area and Copy.  
***Step 2*** On RPI putty SSH or terminal session right click, select paste then Enter to download and run script.   

    curl -L https://raw.github.com/pageauc/rpi-shutdown/master/install.sh | bash

The command above will download and Run the GitHub rpi-shutdown install.sh script and install to ~/shutdown folder.  

### Manual Install
    cd ~
    mkdir shutdown
    cd shutdown
    wget -O shutdown.py https://raw.github.com/pageauc/rpi-shutdown/master/shutdown.py
    chmod +x shutdown.py
    sudo crontab -e

Add line below to sudo crontab -e (without #) Ctrl-x y to exit nano and save change

    @reboot /home/pi/shutdown/shutdown.py

## Operating Instructions
After initial power boot of Raspberry Pi, To Initiate Halt, press momentary switch for specfied time
to Initiate safe shutown.  You can then safely power off RPI or alternatively Restart from Halt by 
waiting approx 5 seconds, then press and holding momentary switch for specified seconds. This will restart
the raspberry pi from the Halt state.  
