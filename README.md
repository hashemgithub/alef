### Thank you for taking the time to review my solution
### here i will try to discribe it as much as possible
### To run the app localy you can use 
`docker compose up` 
![Alt text](alef/screenshot/3.png?raw=true)
### it will launch the DB and the app into docker contaniers please don't forget to include .env file, the .env.example it's for your referance

### Along with that there is helm folder that have the nessesurly files to deploy the app into Kubernetes cluster please note that this have been tested using minikube, and the app image is stored on my dockerhub account, named you can pull it for testing it.
### docker image name
`hashem/alef-test:latest`
### the makefile it has some commands to make the deployment easier

`run-local:`

### will do	docker-compose up 

`stop-local:`
### will do	docker-compose down

`build:`
### will do	docker build 

`push:`
### will do	docker tag & docker push 

`deploy-db:`
### will do	helm upgrade and rollout the deployment



`deploy-app:`
### will do	helm upgrade and rollout the deployment