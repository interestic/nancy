[![Build Status](https://travis-ci.org/interestic/nancy.svg?branch=master)](https://travis-ci.org/interestic/nancy)


nancyは[sid](https://github.com/interestic/sid/)の夢を見る

#exec command

nancyの秘密鍵は以下が defaultで設定されています。  
```
~/.ssh/nancy/authorized_keys_for_nancy
```  
変更する場合は ansible.cfg:107 を変更してください。

```
$ ansible-playbook -i development site.yml {--tag={tagname}}
```
##tagname
- users
- sshd
- oscillo
- git
- apache
- php
- mysql
- php-mysql
- nodejs

when not target private-key by access

```
$ ansible-playbook -i development site.yml -u {username} --ask-pass --ask-sudo-pass
```

#ansible-galaxy install log

```
$ ansible-galaxy install geerlingguy.repo-remi
$ ansible-galaxy install geerlingguy.repo-epel
$ ansible-galaxy install geerlingguy.munin-node
$ ansible-galaxy install geerlingguy.apache
$ ansible-galaxy install geerlingguy.git
$ ansible-galaxy install 5003.rbenv
$ ansible-galaxy install geerlingguy.php
$ ansible-galaxy install geerlingguy.mysql
$ ansible-galaxy install geerlingguy.php-mysql
```

##munin
[こちら](http://27.120.106.27/munin/)  

*basic auth*  
roles/geerlingguy.munin/default/munin.yaml:20-21
