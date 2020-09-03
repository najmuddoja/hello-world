Download code in zip from 
https://github.com/najmuddoja/hello-world.git

Login to your docker server
	sudo su -
create directory /opt/tomcat
	mkdir -p /opt/tomcat
Extract helloworld code ( downloaded at step 1)
Now build the code using maven ( setup Jenkin to build code)

You will get webapp.war ( you can also directly download webapp.war file from mysite saved under files folder)



Create Docker File to build create docker image
	vi Dockerfile
		FROM tomcat:latest
		MAINTAINER Najmuddoja
		COPY ./webapp.war /usr/local/tomcat/webapps
	
save it

Building Docker Image
	docker build -t helloworld-project .
	
Verify Image
	docker images -a
	
Building Docker container from the Image created in step 21
	docker run --name helloworld-container -p 8080:8080 helloworld-project
	
Accessing helloworld docker version

	if you are using cloud vm then you can use public IP , if building on your local machine then use localhost
	
	http://localhost:8080/webapp

