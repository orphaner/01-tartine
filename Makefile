.PHONY: clean
clean:
	rm -rf vendor go.mod go.sum

.PHONY: init
init:
	go mod init github.com/orphaner/tartine

.PHONY: vendor
vendor:
	go mod vendor

