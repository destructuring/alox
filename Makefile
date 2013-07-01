RUBY := ruby

all:
	@cd rubygems && env GEM_PATH= GEM_HOME=$(PWD)/vendor/ruby $(RUBY) setup.rb --prefix=../vendor/ruby
