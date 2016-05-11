#!/bin/bash
sshpass -p 'password_for_remote_host' scp -r /original_folder_to_copy/ root@remote_host:/destination_of_copy/
shopt -s extglob
rm -rf /original_folder_to_copy/!(except_this_folder)