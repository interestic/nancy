#exec command

```
$ ansible-playbook -i development site.yml -u do9iigane --private-key=~/.ssh/DTI/id_rsa
```

#ansible-galaxy install log

```
$ ansible-galaxy install geerlingguy.repo-remi
$ ansible-galaxy install geerlingguy.repo-epel
$ ansible-galaxy install geerlingguy.munin-node
```