RUBY := ruby

all:
	@bundle --quiet --local --standalone --path vendor/bundle
	@mkdir -p bin
	@ln -nfs "$(shell bundle show alox)/bin/alox"  bin/
	bin/alox libexec/alox-test uname -a
