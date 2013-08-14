RUBY := $(shell which ruby 2>&- || true)
BUNDLER := $(shell which bundle 2>&1 || echo vendor/ruby/bin/bundle)
GEM := $(shell which gem 2>&1 || echo vendor/ruby/bin/gem)

all: $(BUNDLER) $(GEM)
	@echo RUBY = $(RUBY)
	@echo BUNDLER = $(BUNDLER)
	@echo GEM = $(GEM)
	@$(BUNDLER) --local --standalone --path vendor/bundle
	time bin/demo uname -a
	time bin/demo runner uname -a
	time bin/demo meh

vendor/ruby/bin/bundle: $(GEM)
	@cd vendor && $(GEM) install bundler -v 1.3.5

vendor/ruby/bin/gem:
	@cd rubygems-1.8.25 && env GEM_PATH= GEM_HOME=$(PWD)/vendor/ruby $(RUBY) setup.rb --prefix=$(PWD)/vendor/ruby

clean:
	@rm -rf vendor/ruby
