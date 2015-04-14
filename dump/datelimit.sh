mysqldump -uroot -pH1ghcr0ft horizon_duplicate patient encountr encordr orders --where="updatedate>=DATE_SUB(NOW(),INTERVAL 1 YEAR)" | gzip > datelimit.dump.gz
