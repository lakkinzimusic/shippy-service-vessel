build:
	protoc --plugin=protoc-gen-go=$(GOPATH)/bin/protoc-gen-go --plugin=protoc-gen-micro=$(GOPATH)/bin/protoc-gen-micro --proto_path=$(GOPATH)/src:. --micro_out=. --go_out=.  \
	proto/vessel/vessel.proto
	# docker build -t shippy-service-vessel .

run:
	docker run -p 50052:50051 -e MICRO_SERVER_ADDRESS=:50051 shippy-service-vessel