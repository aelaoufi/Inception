service mysql start

mysql -u root -e "CREATE DATABASE mdb;"
mysql -u root -e "CREATE USER 'user'@'localhost' IDENTIFIED BY 'anassraja';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'user'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'anassanass';" 
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"

exec $@