# $1 = user
# $2 = password
# $3 = database
mysqldump -u$1 -p$2 $3 encountr encordr patient doctors profile procedur facility rescodes insuranc | gzip > ../dump/alldates.dump.gz
if [ ! -f ../dump/alldates.dump.gz ]; then
   echo "File alldates does not exist after dump"
   exit 1
fi

mysqldump -u$1 -p$2 $3 orders --where="updatedate>=DATE_SUB(NOW(),INTERVAL 1 YEAR)" | gzip > ../dump/datelimit.dump.gz
if [ ! -f ../dump/alldates.dump.gz ]; then
   echo "File datelimits does not exist after dump"
   exit 1
fi

touch ../dump/dump_complete_$(date +"%m_%d_%Y_%H_%M_%S").txt