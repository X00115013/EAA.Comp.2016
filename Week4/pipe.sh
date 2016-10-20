#!/bin/bash/

#This is checking if mysql is running in our linux environment
#using ps

#This answer is then piped into a search of mysql

ps -ef | grep mysql
