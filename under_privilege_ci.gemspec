Gem::Specification.new do |s|
  s.name = %q{under_privilege_ci}
  s.version = "0.0.1"
  s.date = %q{2018-12-14}
  s.summary = %q{Local Continuous Integration tool for free}
  s.files = [
    "lib/under_privilege_ci.rb"
  ]
  s.require_paths = ["lib"]
  s.authors = ["Team Mike"]
  s.executables << 'under_privilege_ci'
<<<<<<< HEAD
  s.add_development_dependency('brakeman')
  s.add_development_dependency('bundler-audit')
=======

  s.add_development_dependency("rspec")
>>>>>>> e204140419433fb0898dfec713affd3b4502d055
end
