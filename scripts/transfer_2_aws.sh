#1 location of .pem file
#2 root directory for ETL

# move the dump file from local to the remote AWS server
scp -i $1 $2/dump/*.gz 54.69.142.168:~
echo "moved db files"

# move the run script - use latest version
scp -i $1 $2/aws/*.* 54.69.142.168:~
echo "moved script files"

touch $2/dump/xfer_complete_$(date +"%m_%d_%Y_%H_%M_%S").txt
