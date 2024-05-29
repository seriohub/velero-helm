
KIND_NAME ?= vui-charts
SRC_ROOT = $(shell git rev-parse --show-toplevel)

helm-docs: HELMDOCS_VERSION := v1.11.0
helm-docs:
	@docker run -v "$(SRC_ROOT):/helm-docs" jnorwood/helm-docs:$(HELMDOCS_VERSION) --chart-search-root /helm-docs

helm-lint: ct
	$(CT) lint --config .github/configs/ct.yaml  --lint-conf .github/configs/lintconf.yaml  --all --debug

helm-test: kind ct
	$(KIND) create cluster --wait=60s --name $(KIND_NAME)
	kubectl create namespace velero # otherwise missing dependency
	@make helm-test-exec
	$(KIND) delete cluster --name $(KIND_NAME)

helm-test-exec:
	$(CT) install --config $(SRC_ROOT)/.github/configs/ct.yaml --all --debug

CT         := $(shell pwd)/bin/ct
CT_VERSION := v3.10.1
ct: ## Download ct locally if necessary.
	$(call go-install-tool,$(CT),github.com/helm/chart-testing/v3/ct@$(CT_VERSION))

KIND         := $(shell pwd)/bin/kind
KIND_VERSION := v0.17.0
kind: ## Download kind locally if necessary.
	$(call go-install-tool,$(KIND),sigs.k8s.io/kind/cmd/kind@$(KIND_VERSION))

PROJECT_DIR := $(shell dirname $(abspath $(lastword $(MAKEFILE_LIST))))
define go-install-tool
@[ -f $(1) ] || { \
set -e ;\
GOBIN=$(PROJECT_DIR)/bin go install $(2) ;\
}
endef
