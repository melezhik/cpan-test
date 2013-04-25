# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "cucumber-nagios"
  s.version = "0.9.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lindsay Holmwood"]
  s.date = "2011-06-13"
  s.description = "cucumber-nagios helps you write behavioural tests for your systems and infrastructure, that can be plugged into Nagios."
  s.email = ["lindsay@holmwood.id.au"]
  s.executables = ["cucumber-nagios", "cucumber-nagios-gen"]
  s.extra_rdoc_files = ["AUTHORS", "HACKING.md", "LICENSE", "README.md", "TODO"]
  s.files = ["bin/cucumber-nagios", "bin/cucumber-nagios-gen", "AUTHORS", "HACKING.md", "LICENSE", "README.md", "TODO"]
  s.homepage = "http://cucumber-nagios.org/"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Systems testing plugin for Nagios using Cucumber."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_runtime_dependency(%q<rspec>, [">= 2.3.0"])
      s.add_runtime_dependency(%q<webrat>, ["= 0.7.2"])
      s.add_runtime_dependency(%q<mechanize>, ["= 1.0.0"])
      s.add_runtime_dependency(%q<templater>, [">= 1.0.0"])
      s.add_runtime_dependency(%q<net-ssh>, ["~> 2.1.0"])
      s.add_runtime_dependency(%q<amqp>, ["= 0.6.7"])
      s.add_runtime_dependency(%q<bundler>, ["~> 1.0.7"])
      s.add_development_dependency(%q<rake>, [">= 0.8.3"])
    else
      s.add_dependency(%q<cucumber>, [">= 0.10.0"])
      s.add_dependency(%q<rspec>, [">= 2.3.0"])
      s.add_dependency(%q<webrat>, ["= 0.7.2"])
      s.add_dependency(%q<mechanize>, ["= 1.0.0"])
      s.add_dependency(%q<templater>, [">= 1.0.0"])
      s.add_dependency(%q<net-ssh>, ["~> 2.1.0"])
      s.add_dependency(%q<amqp>, ["= 0.6.7"])
      s.add_dependency(%q<bundler>, ["~> 1.0.7"])
      s.add_dependency(%q<rake>, [">= 0.8.3"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0.10.0"])
    s.add_dependency(%q<rspec>, [">= 2.3.0"])
    s.add_dependency(%q<webrat>, ["= 0.7.2"])
    s.add_dependency(%q<mechanize>, ["= 1.0.0"])
    s.add_dependency(%q<templater>, [">= 1.0.0"])
    s.add_dependency(%q<net-ssh>, ["~> 2.1.0"])
    s.add_dependency(%q<amqp>, ["= 0.6.7"])
    s.add_dependency(%q<bundler>, ["~> 1.0.7"])
    s.add_dependency(%q<rake>, [">= 0.8.3"])
  end
end
