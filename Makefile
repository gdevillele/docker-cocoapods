.PHONY: image clean cleanforce

image:
	docker build -t cocoapods -f Dockerfile .

clean:
	docker rmi cocoapods

cleanforce:
	docker rmi -f cocoapods
