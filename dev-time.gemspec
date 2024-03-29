# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dev-time/version"

Gem::Specification.new do |s|
  s.name        = "dev-time"
  s.version     = Dev::Time::VERSION
  s.authors     = ["David Vollbracht"]
  s.email       = ["david@flipstone.com"]
  s.homepage    = "http://github.com/flipstone/dev-time"
  s.summary     = %q{Give your Rails app the ability to time travel in development mode!}
  s.description = %q{Ever wish it were last month instead of right now when trying to test
your Rails app? DevTime uses the Delorean gem to add time travel capabilies
to your application so you can make it so!}

  s.rubyforge_project = "dev-time"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  s.add_runtime_dependency "rails", ">= 3.1"
  s.add_runtime_dependency "delorean", ">= 1.2.0"
end
