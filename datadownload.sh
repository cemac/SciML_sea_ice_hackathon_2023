#!/bin/bash
echo 'Downloading dataset from kaggle'
echo 'ensure credentials in ~/.kaggle/kaggle.json'
echo  'see'
echo 'https://www.kaggle.com/docs/api '
echo 'for kaggle API information'
set -e # stop at first error
if [ -d  ./sciml ]; then
echo 'data folder found checking if data already downloaded'
eval nfiles=$(ls sciml/*/* | wc -l)
 if [ ${nfiles} = 4925 ]; then 
     echo 'data already exists exiting'
     exit 0
 fi
fi
echo 'downloading data (this may take a while...)'
kaggle datasets download -d spiruel/leeds-sciml-seaice
echo 'unzipping downloaded file'
unzip leeds-sciml-seaice.zip
echo 'deleting zip file'
rm -f leeds-sciml-seaice.zip
echo 'successfully downloaded data'
exit 0
