all:
	mkdir -p dist
	gox -ldflags="-s -w" -tags="full" -osarch="darwin/amd64 linux/386 linux/amd64 linux/arm freebsd/amd64 windows/amd64" -output="dist/cbor_{{.OS}}_{{.Arch}}" github.com/fiatjaf/cbor
