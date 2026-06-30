# Copyright Layer5, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include .github/build/Makefile.core.mk
include .github/build/Makefile.show-help.mk

# ---------------------------------------------------------------------------
# Academy
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# MAINTENANCE: Show help for available targets
# ---------------------------------------------------------------------------

## Verify required commands and local dependencies are present.
check-deps:
	@echo "Checking if 'npm' and local 'hugo' binary are present..."
	@command -v npm > /dev/null || { echo "Error: 'npm' not found. Please install Node.js and npm."; exit 1; }
	@test -x node_modules/.bin/hugo || { echo "Error: Hugo binary not found in node_modules. Please run 'make setup' first."; exit 1; }
	@echo "Dependencies check passed."

## Validate Go is installed
check-go:
	@echo "Checking if Go is installed..."
	@command -v go > /dev/null || { echo "Go is not installed. Please install it before proceeding."; exit 1 }
	@echo "Go is installed."

## Update the academy-theme package to latest version
theme-update: check-go check-deps
	@echo "Updating to latest academy-theme..."
	npm run update:theme

#----------------------------------------------------------------------------
# LOCAL_BUILDS: Show help for available targets
#----------------------------------------------------------------------------

## Install site dependencies
setup:
	npm install

## Build site for local consumption
build: check-go check-deps
	npm run build:production

## Build site for local consumption
build-preview: check-go check-deps
	npm run build:preview

## Build and run site locally with draft and future content enabled.
serve: check-go check-deps
	npm run serve

## Build and run site locally
site: check-go check-deps
	npm run site

## Empty build cache and run on your local machine.
clean:
	npm run clean
	$(MAKE) setup
	$(MAKE) site

## Format code using Prettier
format:
	npm run format

## Fix Markdown linting issues
lint-fix:
	@echo "Checking for markdownlint-cli2..."
	@command -v markdownlint-cli2 > /dev/null || { \
		echo "markdownlint-cli2 not found. Attempting to install globally..."; \
		command -v npm > /dev/null || { echo "npm is not installed. Please install Node.js/npm and re-run 'make lint-fix'."; exit 1; }; \
		npm install -g markdownlint-cli2; \
	}
	@echo "Running markdownlint-cli2 --fix..."
	@markdownlint-cli2 --fix "**/*.md" "#node_modules" "#public" "#resources"

.PHONY: \
	setup \
	build \
	build-preview \
	serve \
	site \
	clean \
	format \
	lint-fix \
	check-deps \
	check-go \
	theme-update
