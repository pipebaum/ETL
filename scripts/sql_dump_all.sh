# $1 = database
# $2 = etl_home_dir

mysqldump --login-path=local $1 encountr encordr patient doctors profile procedur facility rescodes insuranc | gzip > $2/dump/alldates.dump.gz
if [ ! -f $2/dump/alldates.dump.gz ]; then
   echo "File alldates does not exist after dump"
   exit 1
fi

mysqldump --login-path=local $1 orders --where="updatedate>=DATE_SUB(NOW(),INTERVAL 1 YEAR)" | gzip > $2/dump/datelimit.dump.gz
if [ ! -f $2/dump/alldates.dump.gz ]; then
   echo "File datelimits does not exist after dump"
   exit 1
fi

touch $2/dump/dump_complete_$(date +"%m_%d_%Y_%H_%M_%S").txt
