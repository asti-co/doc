VENVS_DIR := $(HOME)/.venvs
VENV_DIR := $(VENVS_DIR)/asti-co

.PHONY: help
help:
	@grep "^# help\:" Makefile | grep -v grep | sed 's/\# help\: //' | sed 's/\# help\://'

# help: MAINTAIN
# help: venv                           - create a clean virtual environment for development
.PHONY: venv
venv:
	@test -d "$(VENVS_DIR)" || mkdir -p "$(VENVS_DIR)"
	@rm -Rf "$(VENV_DIR)"
	@python3 -m venv "$(VENV_DIR)"
	@/bin/bash -c "source $(VENV_DIR)/bin/activate && pip install --upgrade pip setuptools wheel && pip install -r requirements.txt"
	@echo -e "Enter virtual environment using:\n. $(VENV_DIR)/bin/activate\n"


# help: venv-update                    - update a virtual environment for development
.PHONY: venv-update
venv-update:
	@/bin/bash -c "source $(VENV_DIR)/bin/activate && pip install --upgrade pip setuptools wheel && pip install --upgrade -r requirements.txt"
	@echo -e "Enter virtual environment using:\n. $(VENV_DIR)/bin/activate\n"


# help: activate                       - enter existing venv
.PHONY: activate
activate:
	@echo -e "Enter virtual environment using:\n. $(VENV_DIR)/bin/activate\n"
	@. $(VENV_DIR)/bin/activate


# help: clean                          - clean all files
.PHONY: clean
clean:
	@rm -rf ./site


# help: git-clean                      - clean all files using .gitignore rules
.PHONY: git-clean
git-clean:
	@git clean -X -f -d


# help: git-scrub                      - clean all files, even untracked files
.PHONY: git-scrub
git-scrub:
	@git clean -x -f -d

# help:
# help: MKDOCS
# help: serve                          - serve project html documentation
.PHONY: serve
serve:
	@/bin/bash -c "source $(VENV_DIR)/bin/activate && mkdocs serve"


# help: build                          - build project html documentation
.PHONY: build
build:
	@/bin/bash -c "source $(VENV_DIR)/bin/activate && mkdocs build"


# help: deploy                         - deploy project to github pages
.PHONY: deploy
deploy:
	@/bin/bash -c "source $(VENV_DIR)/bin/activate && mkdocs gh-deploy"

# Keep these lines at the end of the file to retain output formatting.
# help:
