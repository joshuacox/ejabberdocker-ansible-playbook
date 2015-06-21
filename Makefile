all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""   1. make server       - run ejabberd server (then configure Auth)

server: logdir ip hostname domain ejabberd_web_admin_ssl node tz admin1 admin1_pwd admin2 admin2_pwd playbook

playbook:
	ansible-playbook ejabberdocker.yml

ejabberd_web_admin_ssl:
	@while [ -z "$$ejabberd_web_admin_ssl" ]; do \
		read -r -p "Enter the ejabberd_web_admin_ssl of the ejabberd server you wish to associate with these ejabberd [ejabberd_web_admin_ssl]: " ejabberd_web_admin_ssl; echo "$$ejabberd_web_admin_ssl">>ejabberd_web_admin_ssl; cat ejabberd_web_admin_ssl; \
	done ;

hostname:
	@while [ -z "$$hostname" ]; do \
		read -r -p "Enter the hostname of the ejabberd server you wish to associate with these ejabberd [hostname]: " hostname; echo "$$hostname">>hostname; cat hostname; \
	done ;

logdir:
	@while [ -z "$$logdir" ]; do \
		read -r -p "Enter the logdir of the ejabberd server you wish to associate with these ejabberd [logdir]: " logdir; echo "$$logdir">>logdir; cat logdir; \
	done ;

ip:
	@while [ -z "$$ip" ]; do \
		read -r -p "Enter the ip of the ejabberd server you wish to associate with these ejabberd [ip]: " ip; echo "$$ip">>ip; cat ip; \
	done ;

tz:
	@while [ -z "$$tz" ]; do \
		read -r -p "Enter the tz of the ejabberd server you wish to associate with these ejabberd  [tz]: " tz; echo "$$tz">>tz; cat tz; \
	done ;

node:
	@while [ -z "$$node" ]; do \
		read -r -p "Enter the node of the ejabberd server you wish to associate with these ejabberd  [node]: " node; echo "$$node">>node; cat node; \
	done ;

domain:
	@while [ -z "$$domain" ]; do \
		read -r -p "Enter the domain of the ejabberd server you wish to associate with these ejabberd  [domain]: " domain; echo "$$domain">>domain; cat domain; \
	done ;

admin1:
	@while [ -z "$$admin1" ]; do \
		read -r -p "Enter the admin1 of the ejabberd server you wish to associate with these ejabberd  [admin1]: " admin1; echo "$$admin1">>admin1; cat admin1; \
	done ;

admin1_pwd:
	@while [ -z "$$admin1_pwd" ]; do \
		read -r -p "Enter the admin1_pwd of the ejabberd server you wish to associate with these ejabberd  [admin1_pwd]: " admin1_pwd; echo "$$admin1_pwd">>admin1_pwd; cat admin1_pwd; \
	done ;

admin2:
	@while [ -z "$$admin2" ]; do \
		read -r -p "Enter the admin2 of the ejabberd server you wish to associate with these ejabberd  [admin2]: " admin2; echo "$$admin2">>admin2; cat admin2; \
	done ;

admin2_pwd:
	@while [ -z "$$admin2_pwd" ]; do \
		read -r -p "Enter the admin2_pwd of the ejabberd server you wish to associate with these ejabberd  [admin2_pwd]: " admin2_pwd; echo "$$admin2_pwd">>admin2_pwd; cat admin2_pwd; \
	done ;

