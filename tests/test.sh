#!/bin/sh

echo "SCENARIO 1: create public zone DNS"
ansible-playbook test.yml -e "zone_name=ansible.otc.telekomcloud98.com localaction=create waitfor=true" || exit 1
echo "SCENARIO 2: create private zone DNS"
ansible-playbook test.yml -e "zone_name=ansible.otc.telekomcloud98.com vpc_name=ansible-vpc01 localaction=create waitfor=true" || exit 1
echo "SCENARIO 3: show zone DNS"
ansible-playbook test.yml -e "zone_name=ansible.otc.telekomcloud98.com localaction=show" || exit 1
echo "SCENARIO 4: list zone DNS"
ansible-playbook test.yml -e "zone_name=ansible.otc.telekomcloud98.com localaction=list" || exit 1
echo "SCENARIO 5: delete zone DNS"
ansible-playbook test.yml -e "zone_name=ansible.otc.telekomcloud98.com localaction=delete" || exit 1
#echo "SCENARIO 6: ptrcreate DNS"
#echo "SCENARIO 7: ptrdelete DNS"
