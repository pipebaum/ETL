mysqldump -uroot -pH1ghcr0ft smpetl orders --where="updatedate>=DATE_SUB(NOW(),INTERVAL 1 YEAR)" | gzip > datelimit.dump.gz
