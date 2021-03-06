
GOEXE ?= go

help: ## show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-15s\033[0m %s\n", $$1, $$2}'
.PHONY: help

largetype: ## build and run largetype example
	$(GOEXE) run ./examples/largetype -font="Monaco" "Hello world"
.PHONY: largetype

topframe: ## build and run topframe example
	$(GOEXE) run ./examples/_topframe
.PHONY: topframe

pomodoro: ## build and run pomodoro example
	$(GOEXE) run ./examples/pomodoro
.PHONY: pomodoro

bridgehost: ## build and run bridgehost example
	$(GOEXE) install ./cmd/macbridge
	$(GOEXE) run ./examples/bridgehost
.PHONY: bridgehost