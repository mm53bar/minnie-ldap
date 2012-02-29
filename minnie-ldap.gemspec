# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "minnie-ldap/version"

Gem::Specification.new do |s|
  s.name        = "minnie-ldap"
  s.version     = Minnie::Ldap::VERSION
  s.authors     = ["Michael McClenaghan"]
  s.email       = ["mike@sideline.ca"]
  s.homepage    = "https://github.com/mm53bar/minnie-ldap"
  s.summary     = %q{LDAP add-on to the simplest authentication possible}
  s.description = %q{The simplest that LDAP authentication can get while still being useful}

  s.rubyforge_project = "minnie-ldap"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "minnie"
  s.add_runtime_dependency "net-ldap"
end
