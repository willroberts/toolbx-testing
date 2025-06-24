# Toolbx Testing

This repo contains some minimal examples of launching Go containers with
[Toolbx](https://containertoolbx.org/). Toolbx leverages Podman and OCI to
launch lightweight containers on Linux systems.

This is useful for creating development environments on immutable Linux systems,
such as Fedora Silverblue or Bazzite.

## Makefile Commands

There are some preconfigured `make` commands for interacting with Toolbox:
```
make setup  # create (or recreate) a golang container on ubuntu 24.04
make build  # compile the go application
make run    # run the go application
make test   # run unit tests
```

## Toolbox Commands

You can also interact with Toolbox directly:
```bash
# Create a container
toolbox create <name> --distro ubuntu --release 24.04

# Start an interactive shell in the container
toolbox enter <name>

# Run a command inside the container
toolbox run -c <name> -- <command>
```
