GO_LDFLAGS=-ldflags " -w"

TAG=dev
PREFIX=barnettzqg/yiyun

build: ## build the go packages
	@echo "🐳 $@"
	@go build -a -installsuffix cgo ${GO_LDFLAGS} .

image: clean
	@echo "🐳 $@"
	@CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo ${GO_LDFLAGS} .
	@docker build -t $(PREFIX):$(TAG) .
	@docker push $(PREFIX):$(TAG)
	@rm -f yiyun
clean:
	@rm -f yiyun