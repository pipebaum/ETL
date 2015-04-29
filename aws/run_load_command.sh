# $1 = user
# $2 = password
# $3 = database

function getDate(){
   _now=$(date +"%m_%d_%Y_%H_%M_%S")
   echo "$_now"
}

if [ -f ~/alldates.dump.gz ];
then
   echo "$(getDate) File alldates exists"
else
   echo "$(getDate) File alldates does not exists" 1>&2
   exit 1
fi

if [ -f ~/datelimit.dump.gz ];
then
   echo "$(getDate) File datelimit exists"
else
   echo "$(getDate) File datelimit does not exist" 1>&2
   exit 1
fi

zcat alldates.dump.gz | mysql -u $1 -p$2 -D$3 -B
echo "$(getDate) alldates loaded"

zcat datelimit.dump.gz | mysql -u $1 -p$2 -D$3 -B
echo "$(getDate) datelimit loaded"

_file_out="backup_$(getDate).gz"

tar -zcvf "./olddump/$_file_out" *.tgz
rm *.gz
echo "$(getDate) delete source and archive to $_file_out"