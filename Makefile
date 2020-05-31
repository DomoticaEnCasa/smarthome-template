provision:
	ANSIBLE_CONFIG=ansible.cfg time ansible-playbook --ask-pass -i hosts playbook.yml
.PHONY : provision
