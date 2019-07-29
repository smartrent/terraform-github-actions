all:
	make build && \
	make push

build:
	docker build apply    --tag smartrent/terraform-github-actions-apply:0.12.5   && \
	docker build fmt      --tag smartrent/terraform-github-actions-fmt:0.12.5     && \
	docker build init     --tag smartrent/terraform-github-actions-init:0.12.5    && \
	docker build plan     --tag smartrent/terraform-github-actions-plan:0.12.5    && \
	docker build validate --tag smartrent/terraform-github-actions-validate:0.12.5

push:
	docker push  smartrent/terraform-github-actions-apply:0.12.5   && \
	docker push  smartrent/terraform-github-actions-fmt:0.12.5     && \
	docker push  smartrent/terraform-github-actions-init:0.12.5    && \
	docker push  smartrent/terraform-github-actions-plan:0.12.5    && \
	docker push  smartrent/terraform-github-actions-validate:0.12.5


