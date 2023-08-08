service mysql start

mysql -u root -e "CREATE DATABASE zab;"
mysql -u root -e "CREATE USER 'USER'@'%' IDENTIFIED BY 'anassraja';"
mysql -u root -e "REQUIRE NOT REGEXP 'admin|Admin|administrator|Administrator';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'USER'@'%';"
mysql -u root -e "FLUSH PRIVILEGES;"
mysql -u root -e "ALTER USER 'root'@'%' IDENTIFIED BY 'anassraja';" 

exec $@