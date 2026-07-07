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

# Any changes to the main recipes in a repo's Makefile which is subscribed to the "meshery-academy" topic (such as this one)
# requires a subsequent change to all of the other Makefiles subscribed to this topic.
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
	@command -v go > /dev/null || { echo "Go is not installed. Please install it before proceeding."; exit 1; }
	@echo "Go is installed."

## Update the academy-theme package to latest version
theme-update: check-go check-deps
	@echo "Updating to latest academy-theme..."
	npm run update:theme

## Install the htmltest binary used by 'make check-links' (run once per machine).
install-htmltest: check-go
	npm run install:htmltest

# ---------------------------------------------------------------------------
# LOCAL BUILDS: Show help for available targets
# ---------------------------------------------------------------------------

## Install site dependencies
setup:
	npm install

## Build the site locally with draft and future content enabled.
build: check-go check-deps
	npm run build

## Build the site for a deploy preview.
build-preview: check-go check-deps
	npm run build:preview

## Build the site for production.
build-production: check-go check-deps
	npm run build:production

## Build and run the site locally with live reload (draft and future content enabled).
site: check-go check-deps
	npm run site

## Build and serve the site once with the file-watcher off (no live reload).
site-no-watch: check-go check-deps
	npm run site:no-watch

## Empty the build cache, reinstall dependencies, and run the site locally.
clean:
	npm run clean
	$(MAKE) setup
	$(MAKE) site

## Check internal links in the built site (run 'make install-htmltest' once first).
check-links: check-go check-deps
	npm run check:links

## Format code using Prettier
format:
	npm run format

## Check formatting without writing changes.
format-check:
	npm run format:check

## Fix Markdown linting issues
lint-fix:
	npx --yes markdownlint-cli2 "content/**/*.md"

.PHONY: \
	setup \
	build \
	build-preview \
	build-production \
	site \
	site-no-watch \
	clean \
	check-links \
	install-htmltest \
	format \
	format-check \
	lint-fix \
	check-deps \
	check-go \
	theme-update