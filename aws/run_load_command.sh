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
gunzip alldates.dump.gz datelimit.dump.gz
echo "$(getDate) files unzipped"
mysql -uscottr -p$1 smpetl < alldates.dump
echo "$(getDate) alldates loaded"
mysql -uscottr -p$1 smpetl < datelimit.dump
echo "$(getDate) datelimit loaded"

_file_out="backup_$(getDate).gz"

tar -zcvf "./olddump/$_file_out" *.dump
rm *.dump
echo "$(getDate) delete source and archive to $_file_out"
