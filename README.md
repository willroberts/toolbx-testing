# Toolbx Testing

This repo contains some minimal examples of launching containers with
[Toolbx](https://containertoolbx.org/). Toolbx leverages Podman and OCI to
launch lightweight containers on Linux systems.

This is useful for creating development environments on immutable Linux systems,
such as Fedora Silverblue or Bazzite.

## Creating and Launching Containers

Containers can be created and launched from the host environment:
```bash
# Run 'create' and 'enter' commands:
toolbox create toolbx-golang --distro ubuntu --release 24.04
toolbox enter toolbox-golang

# Or use the Makefile:
make container
```

## Configuring the Container

Once inside, configure the container to run Go programs:
```bash
# Install Go:
sudo apt update && sudo apt install -y golang

# Or use the setup script:
./setup.sh
```

You can now run Go code directly:
```bash
$ go run main.go
hello, world
```

## Running Commands inside Containers

Containerized commands can be run without entering containers.
For example, running tests can be done like so:
```bash
# Pass commands to 'toolbox run':
toolbox run -c toolbx-golang -- go test -v

# Or use the Makefile:
make test
```
