.PHONY: setup
setup:
	toolbox rm -f toolbx-golang
	toolbox create toolbx-golang --distro ubuntu --release 24.04 || :
	toolbox run -c toolbx-golang -- sudo apt update
	toolbox run -c toolbx-golang -- sudo apt install -y golang

.PHONY: build
build:
	rm -rf build
	mkdir -p build
	toolbox run -c toolbx-golang -- go build -o build/main main.go

.PHONY: run
run:
	toolbox run -c toolbx-golang -- go run main.go

.PHONY: test
test:
	toolbox run -c toolbx-golang -- go test -v ./...
