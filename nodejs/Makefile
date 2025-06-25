.PHONY: setup
setup:
	toolbox rm -f toolbx-node 2>/dev/null
	toolbox create toolbx-node --distro ubuntu --release 24.04 || :
	toolbox run -c toolbx-node -- wget https://get.volta.sh -O /tmp/volta.sh
	toolbox run -c toolbx-node -- bash /tmp/volta.sh
	toolbox run -c toolbx-node -- volta install node@24

.PHONY: run
run:
	toolbox run -c toolbx-node -- node main.js

.PHONY: test
test:
	toolbox run -c toolbx-node -- node --test
