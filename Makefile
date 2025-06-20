.PHONY: container
container:
	toolbox create toolbx-golang --distro ubuntu --release 24.04 || :
	toolbox enter toolbx-golang

.PHONY: test
test:
	toolbox run -c toolbx-golang -- go test -v
