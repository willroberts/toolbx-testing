.PHONY: container
container:
	toolbox create toolbx-golang --distro ubuntu --release 24.04 || :
	toolbox enter toolbx-golang
