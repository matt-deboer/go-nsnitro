VERSION := 0.1.0
TARGET  := nsnitro
TEST    ?= ./...

GOOS   ?= $(shell uname | tr A-Z a-z)
GOARCH ?= $(subst x86_64,amd64,$(patsubst i%86,386,$(shell uname -m)))

default: test build

test:
	go test -v -cover -run=$(TESTRUN) $(TEST)

build: clean
	go build -v -o bin/$(TARGET)

release: clean
	 GOARCH=amd64 GOOS=linux go build -v -a -ldflags '-w -linkmode external -extldflags "-static" -X main.Version=$(VERSION)' -o bin/$(TARGET) .

clean:
	rm -rf bin/
