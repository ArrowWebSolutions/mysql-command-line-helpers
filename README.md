MySQL Command Line Helpers
==========================

These are some simple bash scripts to make working with multiple MySQL databases much easier. There are only to be used in development environments as they require privileged access to your databases. I'm not proficient in bash, so if you see some improvements please send a PR.

As we web developer I often found myself with multiple databases, I like to keep MySQL lean and small - i.e. only running the databases I'm working on. I also wanted a way to back up the databases using TimeMachine (or other programs that struggle to back up MySQL correctly).

So I wrote some scripts to make it easy to add and remove databases from MySQL. They use an offline store (a folder on your machine) and an online store (MySQL). You can easily move databases between these stores, run a backup, query which databases are online and offline.

## Usage
1. Download / clone this repo (I clone this to `~/.mysql-clh`)
2. Ensure the files all have execute permissions (they should do if cloned)
3. Add the location of the repo to your PATH (i.e. add `PATH=$PATH:~/.mysql-clh` to your `~/.bash_profile`
4. Add a `.config.local.sh` file to `~/.mysql-clh` - this file allows you to overwrite some settings

##Settings
**Put these in your `.config.local.sh` file i.e. `MYSQL_PASS="Arrow"`**

`MYSQL_CMD` this is the command used to execute mysql **default** `mysql`

`MYSQL_DUMP_CMD` the command used to execute a mysqldump **default** `mysqldump`

`MYSQL_HOST` the host running mysql **default** `localhost`

`MYSQL_USER` the user to login as, this should be someone with access to all your databases ideally **default** `root`

`MYSQL_PASS` the password to login to MySQL with **default** ''

`DATA_DIR` the directory to store offline databases in **default** `$HOME/.mysql-clh-data`

## What about fish or zsh?
zsh should be fine.

The easiest thing I can think of is to create some aliases in fish that invoke bash / zsh with the scripts.