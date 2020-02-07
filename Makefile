VERSION_INJECT=main.versionText
SRCS=*.go

EXECUTABLE=bin/tiptester

bin/tiptester: $(SRCS)
	GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o $@ -ldflags "-s -w -X $(VERSION_INJECT)=$(shell sh scripts/get-version.sh)" .

clean:
	rm -rf bin
