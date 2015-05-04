#1 location of .pem file

# move the dump file from local to the remote AWS server
scp -i $1 ~/pdi/etl/ETL/dump/*.gz 54.69.142.168:~
echo "moved db files"

# move the run script - use latest version
scp -i $1 ~/pdi/etl/ETL/aws/*.* 54.69.142.168:~
echo "moved script files"

touch ~/pdi/etl/ETL/dump/xfer_complete_$(date +"%m_%d_%Y_%H_%M_%S").txt
