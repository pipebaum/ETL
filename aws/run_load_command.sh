# $1 = database

function getDate(){
   _now=$(date +"%m_%d_%Y_%H_%M_%S")
   echo "$_now"
}

if [ -z "$1" ]
  then
    echo "No DB argument supplied, set to smpetl"
    $1 = "smpetl"
fi

# test to see the all dates files is present
if [ -f ~/alldates.dump.gz ];
then
   echo "$(getDate) File alldates exists"
else
   echo "$(getDate) File alldates does not exists" 1>&2
   exit 1
fi

#test to see that the date limited file is present
if [ -f ~/datelimit.dump.gz ];
then
   echo "$(getDate) File datelimit exists"
else
   echo "$(getDate) File datelimit does not exist" 1>&2
   exit 1
fi


# unzip (zcat) the file and pipe to the mysql connecting on the local config path, 
# use the database passed as a parameter
zcat alldates.dump.gz | mysql --login-path=local -D$1 -B
echo "$(getDate) alldates loaded"

zcat datelimit.dump.gz | mysql --login-path=local -D$1 -B
echo "$(getDate) datelimit loaded"

# next two lines will zip both dump files into a tar file and
# save it in the old_dump directory
_file_out="backup_$(getDate).tgz"
tar -zcvf "./olddump/$_file_out" *.gz

# Finally we will remove the two dump files (since we have the copy in olddump
rm *.gz

echo "$(getDate) delete source and archive to $_file_out"
