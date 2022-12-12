run-local:
	docker-compose up 

stop-local:
	docker-compose down

build:
	docker build -t $(LOCAL_TAG) .

push:
	docker tag $(LOCAL_TAG) $(REMOTE_TAG)
	docker push $(REMOTE_TAG)

deploy-db:
	helm upgrade --install -n test  hashem-db helm/hashem-db --set image.repository=postgres:11-alpine --set image.tag=latest --set namespace=test
	kubectl -n test rollout status deploy/hashem-db 


deploy-app:
	helm upgrade --install -n test  hashem-app helm/hashem-app --set image.repository=hashem/alef-test:latest --set image.tag=latest --set namespace=test
	kubectl -n test rollout status deploy/hashem-app