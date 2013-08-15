all: 
	@bundle --quiet --local --path vendor/bundle
	bin/demo uname -a
	@echo
	bin/demo runner uname -a
	@echo
	bin/demo meh && false || echo "supposed to not find demo subcommand meh"
