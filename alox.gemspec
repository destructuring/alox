# -*- encoding: utf-8 -*-
#
$:.push File.expand_path("../lib", __FILE__)
require "alox/version"

Gem::Specification.new do |s|
  s.name        = "alox"
  s.version     = AlOx::Version.to_s
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Nghiem", "Tom Bombadil"]
  s.email       = ["nghidav@gmail.com", "amanibhavam@destructuring.org"]
  s.homepage    = "https://github.com/destructuring/alox"
  s.summary     = %q{shell scripts packaged as rubygems}
  s.description = %q{shell scripts packaged as rubygems, activated with bundler}
  s.date        = %q{2013-06-31}
  s.executables   = ["alox" ]
  s.require_paths = ["lib"]
  s.files = %w(LICENSE VERSION README.md) + Dir.glob("exec/**/*") + Dir.glob("lib/**/*")
end
