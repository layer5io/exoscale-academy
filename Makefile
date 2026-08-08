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
# SHARED TEMPLATE — PROPAGATE CHANGES
#
# This Makefile is a shared template. Any change to a main recipe below must be
# mirrored in the corresponding Makefile of each repository listed here:
#
#   - https://github.com/layer5io/docs
#   - https://github.com/meshery/meshery/tree/master/docs
#   - https://github.com/topics/meshery-academy
#
# Target names, prerequisites, and the npm scripts they call form the shared
# contract; keep them identical across repositories. The Docker section,
# theme-update, the check-go implementation, and any extra check-deps guards are
# per-repository adaptations and are expected to differ.
#
# MAIN TARGETS
#
#   setup              Install site dependencies (npm install).
#   build              Build locally with draft, future, and expired content.
#   build-preview      Build for a deploy preview (uses DEPLOY_PRIME_URL).
#   build-production   Build for production. Pass BASE_URL=... to set the base URL.
#   site               Serve locally with live reload.
#   serve              Serve locally once, file watcher off (no live reload).
#   clean              Empty the build cache, reinstall dependencies, run 'site'.
#   lint / lint-fix    Check or auto-fix Markdown linting issues.
#   check-links        Check internal links in the built site.
#   check-deps         Verify required commands and local dependencies.
#   check-go           Verify Go is installed (required by Hugo Modules).
#
# ---------------------------------------------------------------------------

# ---------------------------------------------------------------------------
# MAINTENANCE
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

## Check internal links in the built site.
check-links: check-go check-deps
	npm run check:links

## Check Markdown for linting issues.
lint: check-deps
	npm run lint

## Fix Markdown linting issues.
lint-fix: check-deps
	npm run lint:fix

## Update the academy-theme package to latest version
theme-update: check-go check-deps
	@echo "Updating to latest academy-theme..."
	npm run theme:update

# ---------------------------------------------------------------------------
# LOCAL BUILDS
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
	set -e; \
	if [ -n "$(BASE_URL)" ]; then \
		base_url="$(BASE_URL)"; \
		base_url="$${base_url%/}/"; \
		npm run build:production -- --baseURL "$$base_url"; \
	else \
		npm run build:production; \
	fi

## Build and run the site locally with live reload (draft and future content enabled).
site: check-go check-deps
	npm run site

## Build and serve the site once with the file-watcher off (no live reload).
serve: check-go check-deps
	npm run serve

## Empty the build cache, reinstall dependencies, and run the site locally.
clean:
	npm run clean
	$(MAKE) setup
	$(MAKE) site

.PHONY: \
	setup \
	build \
	build-preview \
	build-production \
	site \
	serve \
	clean \
	check-links \
	lint \
	lint-fix \
	check-deps \
	check-go \
	theme-update