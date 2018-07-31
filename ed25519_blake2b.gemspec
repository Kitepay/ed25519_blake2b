
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ed25519_blake2b/version"

Gem::Specification.new do |spec|
  spec.name          = "ed25519_blake2b"
  spec.version       = Ed25519Blake2b::VERSION
  spec.authors       = ["Ryan LeFevre"]
  spec.email         = ["meltingice8917@gmail.com"]

  spec.summary       = %q{Ruby library for ed25519, but with blake2b as the hashing function.}
  spec.description   = %q{Ruby library for ed25519, but with blake2b as the hashing function as required by the Nano cryptocurrency.}
  spec.homepage      = "https://github.com/Kitepay/ed25519_blake2b"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.extensions << "ext/ed25519_blake2b/extconf.rb"

  spec.add_development_dependency "rake-compiler", "~> 1.0"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end
