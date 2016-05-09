# nexxacopy

Bash copy script from vps to vps with crontab scheduling (debian)

### Download zip

```
wget https://github.com/neonexxa/nexxacopy/archive/v0.1.tar.gz

```

### Config script 

copy the file to your bin folder

```
cp nexxacopy-0.1-beta.sh /bin/

```

edit the file based on your copy or migration schedule

```

sshpass -p 'password_for_remote_host' scp -r /original_folder_to_copy/ root@remote_host:/destination_of_copy/


```

The script is sending 2 argument

Uses :

- [sshpass](http://linux.die.net/man/1/sshpass) can learn from here

Installation

```
apt-get install sshpass

```

- [scp](http://www.computerhope.com/unix/scp.htm) can learn from here

Lastly it will delete the original file

```
rm -rf /original_folder_to_copy/

```

*You can remove this part if you dont want to delete the original files* 

### Crontab Scheduling

[CRONTAB](https://debian-administration.org/article/56/Command_scheduling_with_cron) is a command scheduling eaquiped with Debian OS build.

To edit your crontabe file run:

	crontab -e

Enter the following:

	0   *   *   *   * /bin/nexxacopy-0.1-beta.sh

this will tell the crontab to run our new bash file. you can learn more about the timing of scheduling in the crontab documentation. 

Then just save and exit the editor. 
you will see response below for each succesful instruction given on crontab.

	crontab: installing new crontab

You can verify that the file contains what you expect with :

	crontab -l

# Still need help?

Just shoot me an email firdaus@cyberhax.club for more inquiries. 

~ This is just the beginning. ~ 