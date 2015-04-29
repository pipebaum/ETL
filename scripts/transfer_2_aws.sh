# move the dump file
scp -i ~/pdi/SMPLABS_AWSKeyPair.pem ~/pdi/ETL/dump/*.gz 54.69.142.168:~
echo "moved db files"

# move the run script - use latest version
scp -i ~/pdi/SMPLABS_AWSKeyPair.pem ~/pdi/ETL/aws/*.* 54.69.142.168:~
echo "moved script files"

touch ~/pdi/ETL/dump/xfer_complete_$(date +"%m_%d_%Y_%H_%M_%S").txt