#!/bin/bash

echo "(if you haven't already you will need to sudo)"
#installing pip
python get-pip.py
#install robot framework
pip install robotframework
#install selenium
pip install selenium
#install library
pip install robotframework-selenium2library 
#get webdrivers
cp chromedriver /usr/local/bin



