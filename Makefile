
.PHONY: build-lambda
build-lambda:
	cd src/lambda && \
		GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o ../../build/main
