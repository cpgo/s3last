# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 's3last/version'

Gem::Specification.new do |spec|
  spec.name          = "s3last"
  spec.version       = S3last::VERSION
  spec.authors       = ["Cassio Godinho"]
  spec.email         = ["cassiopgodinho@gmail.com"]

  spec.summary       = %q{Download last file on specified bucket}
  spec.description   = %q{Download last file on specified bucket}
  spec.homepage      = "https://github.com/cpgo/s3last"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = "s3last"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
