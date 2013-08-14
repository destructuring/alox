# -*- encoding: utf-8 -*-
#
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "demo"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Nghiem", "Tom Bombadil"]
  s.email       = ["nghidav@gmail.com", "amanibhavam@destructuring.org"]
  s.homepage    = "https://github.com/destructuring/alox"
  s.summary     = %q{alox demo}
  s.description = %q{alox demo}
  s.date        = %q{2013-06-31}
  s.executables   = []
  s.require_paths = ["lib"]
  s.files = Dir.glob("exec/**/*") + Dir.glob("lib/**/*")
end
