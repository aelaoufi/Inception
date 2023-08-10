service mysql start

mysql -u root -e "CREATE DATABASE mdb;"
mysql -u root -e "CREATE USER 'USER'@'%' IDENTIFIED BY 'anassraja';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'%' IDENTIFIED BY 'anassanass';" 
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"

exec $@