# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{roys_extensions}
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Roy Wright"]
  s.date = %q{2009-04-22}
  s.email = %q{roy@wright.org}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION.yml",
    "lib/file_extensions.rb",
    "lib/kernel_extensions.rb",
    "lib/module_extensions.rb",
    "lib/numeric_extensions.rb",
    "lib/object_extensions.rb",
    "lib/roys_extensions.rb",
    "lib/string_extensions.rb",
    "spec/file_extensions_spec.rb",
    "spec/kernel_extensions_spec.rb",
    "spec/module_extensions_spec.rb",
    "spec/numeric_extensions_spec.rb",
    "spec/object_extensions_spec.rb",
    "spec/spec_helper.rb",
    "spec/string_extensions_spec.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/royw/roys_extensions}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}
  s.test_files = [
    "spec/spec_helper.rb",
    "spec/numeric_extensions_spec.rb",
    "spec/object_extensions_spec.rb",
    "spec/file_extensions_spec.rb",
    "spec/string_extensions_spec.rb",
    "spec/module_extensions_spec.rb",
    "spec/kernel_extensions_spec.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
