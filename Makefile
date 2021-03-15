#PSVAR := $(shell docker ps -a -q  --filter ancestor=bugs)

deploy:
	-docker stop httpd
	docker build . -t bugs
	docker run -d -p 80:80 --rm --name httpd bugs


sync:	
	docker exec -it httpd sh ./sync.sh
