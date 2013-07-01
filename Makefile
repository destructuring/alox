RUBY := ruby

all:
	@cd rubygems && env GEM_PATH= GEM_HOME=$(PWD)/vendor/ruby $(RUBY) setup.rb --prefix=../vendor/ruby
	@bin/gem install bundler
	@bin/gem list
	@time bin/bundle exec alox

clean:
	@rm -rf vendor/ruby
