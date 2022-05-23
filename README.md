# MWNL Server
Connect to mwnl server through ssh

## Pre-requists
* You need to gen ssh public key in server
```sh=
# To generate the public ssh key of your own device
$ssh-keygen

# Copy the public key to server computer
# Example USER@HOST = my_computer@127.0.0.1
$ ssh-copy-id -i ~/.ssh/id_rsa.pub USER@HOST 
```

* Create and edit the ssh.config
```sh=
$touch ssh.conf
$vim ssh.conf

HOST_IP=127.0.0.1
HOST_NAME_1=user_name_1
HOST_NAME_2=user_name_2
HOST_NAME_3=user_name_3
HOST_NAME_4=empty
HOST_NAME_5=empty
```

## Happy use
```sh=
chmod +x login_mwnl.sh
$./login_mwnl.sh
```