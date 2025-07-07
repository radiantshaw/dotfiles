TOOLS := $(shell ls tools)
.PHONY: $(TOOLS)

default:
	@echo "Please specify a tool. Available tools are:"
	@for tool in $(TOOLS); do \
		echo "  - $$tool"; \
	done

$(TOOLS):
	@make -f tools/$@/Makefile
