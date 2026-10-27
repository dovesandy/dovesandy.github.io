# frozen_string_literal: true
Gem::Specification.new do |spec|
  spec.name          = "rb3-shim"
  spec.version       = "0.1.0"
  spec.authors       = ["sandy"]
  spec.summary       = "Restore Object#taint/untaint/tainted? as no-ops for liquid 4 on Ruby >= 3.0"
  spec.files         = ["lib/rb3-shim.rb"]
  spec.require_paths = ["lib"]
end
