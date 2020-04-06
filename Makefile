all: base master workers

base-install:
	ansible-playbook ./base-install.yaml -i inventories/cluster-0/hosts

configure-master:
	ansible-playbook ./configure-master.yaml -i inventories/cluster-0/hosts

configure-workers:
	ansible-playbook ./configure-workers.yaml -i inventories/cluster-0/hosts

clean-master:
	ansible-playbook ./clean.yaml -i inventories/cluster-0/hosts --tags "master"

clean-workers:
	ansible-playbook ./clean.yaml -i inventories/cluster-0/hosts --tags "workers"

clean-all:
	ansible-playbook ./clean.yaml -i inventories/cluster-0/hosts --tags "master, workers"
