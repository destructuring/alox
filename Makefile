RUBY := ruby

all:
	@cd rubygems && env LANG=en_US.UTF-8 GEM_PATH= GEM_HOME=$(PWD)/vendor/ruby $(RUBY) setup.rb --prefix=../vendor/ruby
	@bin/gem install bundler
	@bin/gem list
	@bin/bundle --local --standalone --path vendor/bundle
	@time env BUNDLE_GEMFILE=$(PWD)/Gemfile bin/alox uname -a

clean:
	@rm -rf vendor/ruby
