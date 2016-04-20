#exec command

```
$ ansible-playbook -i development site.yml -u {username} --private-key={private_key_path}
```

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
```