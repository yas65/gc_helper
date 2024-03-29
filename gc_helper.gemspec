# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "gc_helper/version"

Gem::Specification.new do |s|
  s.name        = "gc_helper"
  s.version     = GcHelper::VERSION
  s.authors     = ["Kohei Yasumura"]
  s.email       = ["yasumura@f-plat.com"]
  s.homepage    = ""
  s.summary     = %q{Simply wrap Google Calendar API}
  s.description = %q{Currentry this gem provides only adding calendar event.}

  s.rubyforge_project = "gc_helper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
