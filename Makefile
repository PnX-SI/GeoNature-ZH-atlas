###########################
#          colors         #
###########################
PRINT_COLOR = printf
COLOR_SUCCESS = \033[1;32m
COLOR_DEBUG = \033[36m
COLOR_RESET = \033[0m

###########################
#        Variables        #
###########################

DIR_BIN = venv/bin/
API_ENDPOINT = http://localhost:8000/api

-include Makefile.perso.mk

###########################
#      Environment        #
###########################

.PHONY: create_venv
create_venv:
	$(call display_cmd, Create venv)
	python3 -m venv .venv

###########################
#        manage pbf       #
###########################

.PHONY: get_pbf
get_pbf:
	$(call display_cmd, Get pbf)
	wget $(API_ENDPOINT)/zones_humides/pbf/complete -O public/geonature.pbf || true

###########################
#        Run project      #
###########################

.PHONY: docker-build
docker-build: get_pbf
	$(call display_cmd, build docker image)
	docker build -t geonature-zones-humides-atlas .

.PHONY: docker-serve-dev
docker-serve-dev: get_pbf
	$(call display_cmd, Start docker dev server)
	docker compose up

.PHONY: npm-serve-dev
npm-serve-dev:
	$(call display_cmd, Start dev server)
	npm run dev

define display_cmd
	@$(PRINT_COLOR) "\n$(COLOR_SUCCESS) ########################## $(COLOR_RESET)\n"
	@$(PRINT_COLOR) "$(COLOR_SUCCESS) ### $(1) $(COLOR_RESET)\n"
	@$(PRINT_COLOR) "$(COLOR_SUCCESS) ########################## $(COLOR_RESET)\n\n"
endef

###########################
#        Launch doc       #
###########################

.PHONY: launch_doc
launch_doc:
	$(call display_cmd, Launch doc)
	.venv/bin/mkdocs serve
