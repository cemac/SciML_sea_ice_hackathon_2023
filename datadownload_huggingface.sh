#!/bin/bash
echo 'downloading data from huggingface (this may take a while...)'
wget https://huggingface.co/datasets/cemachelen/Leeds_SciML_SeaIce_2023/resolve/main/leeds-sciml-seaice.zip
echo 'unzipping downloaded file'
unzip leeds-sciml-seaice.zip
echo 'deleting zip file'
rm -f leeds-sciml-seaice.zip
echo 'successfully downloaded data'
exit 0
