#!/bin/bash
echo 'downloading data from huggingface (this may take a while...)'
wget https://huggingface.co/cemachelen/UNet_SciML_Hackathon/resolve/main/model.tar.gz
echo 'untarring downloaded file'
tar xzf model.tar.gz
echo 'deleting tar file'
rm -f model.tar.gz
echo 'successfully downloaded data'
exit 0
