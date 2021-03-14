PSVAR := $(shell docker ps -a -q  --filter ancestor=bugs)

deploy:
	docker stop $(PSVAR)
	docker build . -t bugs
	docker run -d -p 80:80 bugs

biuld-it:
	docker stop $(docker ps -a -q  --filter ancestor=bugs)
	docker build . -t bugs
	docker run -it -p 80:80 bugs

sync:	
	docker rmi $(PSVAR)
	docker build --no-cache . -t bugs
	docker run -d -p 80:80 bugs
