# Toolbx Testing

This repo contains some minimal examples of launching containers with
[Toolbx](https://containertoolbx.org/). Toolbx leverages Podman and OCI to
launch lightweight containers on Linux systems.

This is useful for creating development environments on immutable Linux systems,
such as Fedora Silverblue or Bazzite.

## Creating Containers

Containers can be created from the host environment:
```bash
toolbox create toolbx-golang --distro ubuntu --release 24.04
```

## Starting a Shell

Use the 'toolbox enter' command to start an interactive session:
```bash
toolbox enter toolbx-golang
```

## Configuring the Container

Once inside, configure the container to run Go programs:
```bash
sudo apt update && sudo apt install -y golang
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
toolbox run -c toolbx-golang -- go test -v
```
