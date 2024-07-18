
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "form_input_field/version"

Gem::Specification.new do |spec|
  spec.name          = "form_input_field"
  spec.version       = FormInputField::VERSION
  spec.authors       = ["Alan McKay"]
  spec.summary       = "A gem for Ruby on Rails which wraps up functionality of maintaining values for forms to factor cases where a POST fails model validation while also providing a means to succinctly produce relevant error messages."
  spec.homepage      = "https://alanmckay.blog/projects/form_input_field"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/alanmmckay/form_input_field"
    spec.metadata["bug_tracker_uri"] = "https://github.com/alanmmckay/form_input_field/issues"
    spec.metadata["documentation_uri"] = "https://github.com/alanmmckay/form_input_field/blob/main/README.md"
    spec.metadata["changelog_uri"] = "https://github.com/alanmmckay/form_input_field/blob/main/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["lib/**/*.rb"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.8.7'
  spec.add_runtime_dependency "rails", ">= 2.3"
  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
