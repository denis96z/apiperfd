.PHONY: all
all: apiperfd-client apiperfd-worker

.PHONY: apiperfd-client
apiperfd-client:
	go build -o $(PWD)/bin/apiperfd-cli $(PWD)/cmd/apiperfd/client/...

.PHONY: apiperfd-worker
apiperfd-worker:
	go build -o $(PWD)/bin/apiperfd-worker $(PWD)/cmd/apiperfd/worker/...

.PHONY: fmt
fmt:
	go fmt $(PWD)/...

.PHONY: tidy
tidy:
	go mod tidy
