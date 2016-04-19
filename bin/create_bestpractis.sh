#!/bin/sh
PLAYBOOK_DIR=`pwd`
ENVIRONMENTS=('development' 'staging' 'production')
ROLES=('common' 'httpd')

cd $PLAYBOOK_DIR

touch site.yml webservers.yml dbservers.yaml
mkdir -p group_vars host_vars library filter_plugins roles

for environment in ${ENVIRONMENTS[@]}; do
    touch $environment
    touch group_vars/$environment.yml
done

for role in ${ROLES[@]}; do
    mkdir -p $PLAYBOOK_DIR/roles/$role && cd $_
    mkdir -p tasks handlers templates files vars defaults meta
    touch tasks/main.yml
    touch handlers/main.yml
    touch vars/main.yml
    touch defaults/main.yml
    touch meta/main.yml
done