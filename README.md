# Nexxacopy

Bash copy script from vps to vps with crontab scheduling (debian)

### Download the ZIP 📦

```
wget https://github.com/neonexxa/nexxacopy/archive/v0.2.tar.gz
tar xpvf v0.2.tar.gz

```

### Config script 

copy the file to your bin folder

```
cd nexxacopy-0.2/
cp nexxacopy-0.2-beta.sh /bin/

```

edit the file based on your copy or migration schedule

	nano /bin/nexxacopy-0.2-beta.sh

What you will see:

```
#!/bin/bash

sshpass -p 'password_for_remote_host' scp -r /original_folder_to_copy/ root@remote_host:/destination_of_copy/

shopt -s extglob

rm -rf /original_folder_to_copy/!(except_this_folder)

```

Uses :

- [sshpass](http://linux.die.net/man/1/sshpass) can learn from here

Installation

```
apt-get install sshpass

```

- [scp](http://www.computerhope.com/unix/scp.htm) can learn from here

Lastly it will delete the original file

```

shopt -s extglob  #this will allow the use of "!" below

rm -rf /original_folder_to_copy/!(except_this_folder)

```

*You can remove this part if you dont want to delete the original files* 

### Crontab Scheduling

[CRONTAB](https://debian-administration.org/article/56/Command_scheduling_with_cron) is a command scheduling eaquiped with Debian OS build.

To edit your crontabe file run:

	crontab -e

Enter the following:

	0   *   *   *   * /bin/nexxacopy-0.2-beta.sh

this will tell the crontab to run our new bash file. you can learn more about the timing of scheduling in the crontab documentation. 

Then just save and exit the editor. 
you will see response below for each succesful instruction given on crontab.

	crontab: installing new crontab

You can verify that the file contains what you expect with :

	crontab -l

# Still need help?

Just shoot me an email firdaus@cyberhax.club for more inquiries. 

~ This is just the beginning. ~ 