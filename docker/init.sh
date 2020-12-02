#!/bin/sh

docker build . -t xilinx
ID=$(docker run --detach -v /Volumes/Backup/Xilinx_Unified_2020.2_1118_1232:/mnt xilinx /mnt/xsetup --agree 3rdPartyEULA,WebTalkTerms,XilinxEULA --batch Install --config install_config.txt)
docker attach $ID
docker commit $ID xilinx
docker rm $ID