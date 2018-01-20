lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "readline"
  spec.version       = "1.0.0"
  spec.authors       = ["Kouji Takao"]
  spec.email         = ["ruby-core@ruby-lang.org"]

  spec.summary       = %q{Ruby interface for GNU Readline and Edit Line.}
  spec.description   = %q{The Readline module provides interface for GNU Readline.
This module defines a number of methods to facilitate completion
and accesses input history from the Ruby interpreter.
This module supported Edit Line(libedit) too.
libedit is compatible with GNU Readline.}
  spec.homepage      = "https://github.com/larskanis/ruby-readline"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions = ["ext/readline/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit", "~> 3.0"
  spec.add_development_dependency "rake-compiler", "~> 1.0"
end
