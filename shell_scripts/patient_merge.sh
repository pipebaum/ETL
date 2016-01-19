echo Slave ID: $1
echo Master ID: $2

echo /opt/pentaho/data-integration/pan.sh -file=/etl/prod/ETL/PATIENT_MERGE.ktr --param:slavePatientId=$1 --param:masterPatientId=$2 -level=Basic -logfile=/home/pentaho/log/patient_merge__$1__$2__$(date +"%m_%d_%Y_%H_%M_%S").log
