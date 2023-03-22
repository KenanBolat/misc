#!/bin/bash
cd /HSAF/; 
find notifications -type f ! '(' -name '*.txt' ')' -exec curl -C - -u <username>:<password> --ftp-create-dirs -T {} ftp://178.251.45.171//Hidrosaf/hsaf/local_notification_email/tsms_{} \;
