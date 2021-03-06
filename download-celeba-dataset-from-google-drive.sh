#!/bin/bash

### Step 1. Get link and FILEID of the file in Google Drive
# Skip if you already know the link.  
# Right click the file and select "get sharable link". (The link will be copied to the clipboard automatically.)  
# FILEID can be found in the link following "drive.google.com/open?id=".  

### Step 2. Open terminal and run the command line using WGET
# wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=FILEID" -O FILENAME && rm -rf /tmp/cookies.txt

### 3. Exercise
# Let's say you want to download a file named "img_align_celeba.zip" from the celebA dataset (Large-scale CelebFaces Attributes Dataset)  
# The file link you want to download: https://drive.google.com/open?id=0B7EVK8r0v71pZjFTYXZWM3FlRnM  

wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=0B7EVK8r0v71pZjFTYXZWM3FlRnM' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=0B7EVK8r0v71pZjFTYXZWM3FlRnM" -O img_align_celeba.zip && rm -rf /tmp/cookies.txt  
