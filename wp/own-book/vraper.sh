#!/bin/bash

######### MAIN #########

if systemctl status firewalld | grep running
  then
   systemctl stop firewalld
   yum remove firewalld -y
  else
   exit 0
fi

