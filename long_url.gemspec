# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{long_url}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Markus Prinz"]
  s.date = %q{2009-06-03}
  s.email = %q{markus.prinz@nuclearsquid.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/long_url.rb",
     "test/long_url_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/cypher/long_url}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{A small wrapper for the Long URL Please (http://www.longurlplease.com/) API}
  s.test_files = [
    "test/long_url_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_development_dependency(%q<rr>, [">= 0.10.0"])
    else
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rr>, [">= 0.10.0"])
    end
  else
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rr>, [">= 0.10.0"])
  end
end
