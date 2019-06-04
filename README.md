# Docker MariaDB/MYSQL Backup
Docker Container with builtin Cron job to backup a MariaDB/MYSQL database

## Required environment variables
* `HOST`: Container name in which is your database
* `DATABASE`: Your database name
* `PASSWORD`: Your root password for the database instance

## Required volumes
* `/opt/mysql/backup:/opt/mysql/backup`

## Required command
* `crond -f -d 8`
