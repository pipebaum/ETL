whoami
cd
ls
sudo cp /home/scottr/pdi-ce-5.3.0.0-213.zip .
sudo cp /home/scottr/pdi-ce-5.3.0.0-213.zip 
sudo /usr/lib/vino/vino-server 
exit
cd
pwd
ls
cd .kettle
exit
ls
./spoon.sh & 
:q
cd ..
chown -R pentaho:pentaho pentaho
sudo chown -R pentaho:pentaho pentaho
exit
cd pentaho/pdi-ce-5.3.0.0-213/
./spoon.sh
.SWTError: No more handles [gtk_init_check() failed]exit
cd ..
exit
cd ~
cd /etl/prod
ls
cd 
ls -ltr
pwd
cd /etl
ls
ls -ltr
cd
ls
rm pdi-ce-5.3.0.0-213.zip 
vi .bashrc
source ~/.bashrc
pdi
etl
cd /etl/prod
git clone "https://github.com/pipebaum/ETL.git"
ls -ltr
etl
ls
cd aws
less run_load_command.sh 
cd 
vi run_full_load.sh
chmod +x run_full_load.sh 
./run_full_load.sh 
/opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh
opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh
vi run_full_load.sh
opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh -file=/etl/prod/ETL/SMP_BULK_LOAD.kjb -logfile=~/log/full_$(date +"%m_%d_%Y_%H_%M_%S").log
/opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh -file=/etl/prod/ETL/SMP_BULK_LOAD.kjb -logfile=~/log/full_$(date +"%m_%d_%Y_%H_%M_%S").log
mkdir log
/opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh -file=/etl/prod/ETL/SMP_BULK_LOAD.kjb -logfile=~/log/full_$(date +"%m_%d_%Y_%H_%M_%S").log
/opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh -file=/etl/prod/ETL/SMP_BULK_LOAD.kjb -logfile=log/full_$(date +"%m_%d_%Y_%H_%M_%S").log
cd log
ls
less full_05_01_2015_16_34_09.log 
cd ..
cd .kettle
ls
sudo cp /home/scottr/.kettle/kettle.properties .
exit
vi kettle.properties
ls
whoami
ls -ltr
cd ..
cd~
cd
ls
cd .kettle/
ls
ls -ltr
vi kettle.properties 
etl
cd scripts
ls
vi create_config.sh
./create_config.sh 
mysql
mysql --login-path=local
cd
ls
exit
etl
ls
ls *.
ls */ -ltr
ls */
ls -d */
ls  */
ls -d */
cd dump
ls
df -k
exit
etl
cd scripts
ls
less transfer_2_aws.sh 
cd ..
git status
git commit -a -m "modify transfer script to accept pem file as parameter"
git config --global user.email "scottr@innoventsolutions.com"
git config --global user.name "Scott Rosenbaum"
git commit -a -m "modify transfer script to accept pem file as parameter"
git push origin master
cd
pwd
cp /home/scottr/pdi/SMPLABS_AWSKeyPair.pem .
sudo cp /home/scottr/pdi/SMPLABS_AWSKeyPair.pem .
ls
ssh -i ~/SMPLABS_AWSKeyPair.pem 54.69.142.168
ls
cd .ssh
ls
rm -r
rm -r known_hosts 
ssh -i ~/SMPLABS_AWSKeyPair.pem 54.69.142.168
cd
less SMPLABS_AWSKeyPair.pem 
ls
ls -ltr
sudo chown pentaho:pentaho SMPLABS_AWSKeyPair.pem 
ls -ltr
ssh -i ~/SMPLABS_AWSKeyPair.pem 54.69.142.168
hostname
whoami
cd
/opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh -file=/etl/prod/ETL/SMP_BULK_LOAD.kjb -logfile=log/full_$(date +"%m_%d_%Y_%H_%M_%S").log
etl
mkdir dump
cd
etl
ls
ls *.kjb
cd
/opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh -file=/etl/prod/ETL/SMP_XFER_LOAD.kjb -logfile=log/full_$(date +"%m_%d_%Y_%H_%M_%S").log
ls
cd log
ls -ltr
less full_05_01_2015_19_08_11.log 
cd ..
ls /etl/prod/ETL/*.kjb
/opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh -file=/etl/prod/ETL/SMP_XFER_LOAD.kjb -logfile=log/full_$(date +"%m_%d_%Y_%H_%M_%S").log -loglevel=debug
/opt/pentaho/pdi-ce-5.3.0.0-213/kitchen.sh -file=/etl/prod/ETL/SMP_BULK_LOAD.kjb -logfile=log/full_$(date +"%m_%d_%Y_%H_%M_%S").log
etl
cd dump
ls
cd ..
cd log
ls
cd ../log
cd 
cd log
ls
ls -ltr
less full_05_04_2015_14_26_23.log
cd ../.kettle/
vi kettle.properties 
cd ../log
less full_05_04_2015_14_26_23.log
etl
cd scripts
ls
vi transfer_2_aws.sh 
etk
etl
git pull --force
cd
ls
mv SMPLABS_AWSKeyPair.pem .kettle/.
ls
cd .kettle
ls
vi kettle.properties 
etl
cd dump
ls
rm *.*
cd ..
ls
cd
less ~/.bash_history 
vi run_export.sh
chmod +x run_export.sh 
ls
rm run_full_load.sh 
./run_export.sh 
etl
cd scripts
ls
less transfer_2_aws.sh 
cd
./run_export.sh 
whoami
cd
psd
pwd
ls
vi run_export.sh 
cd log
ls -ltr
less full_05_01_2015_16_34_09.log
less full_05_04_2015_14_26_23.log
etl
cd
ls
less run_export.sh 
ry;
etl
cd scripts
less create_config.sh 
-password
mysql_config_editor print --all
mysql --login-path=local
cd
cd log
ls
ls -ltr
less full_05_04_2015_14_26_23.log
etl
git reset --hard HEAD
git pull
cd
cd log
less full_05_04_2015_14_26_23.log
etl
cd scripts
ls
less transfer_2_aws.sh 
less ~/.kettle/kettle.properties 
./transfer_2_aws.sh /home/pentaho/.kettle/SMPLABS_AWSKeyPair.pem
vi transfer_2_aws.sh 
git pull
./transfer_2_aws.sh /home/pentaho/.kettle/SMPLABS_AWSKeyPair.pem /etl/prod/ETL
cd
./run_export.sh 
exit
