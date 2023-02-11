require_relative 'lib/my_study_gem_plan/version'

Gem::Specification.new do |spec|
  spec.name          = "my_study_gem_plan"
  spec.version       = MyStudyGemPlan::VERSION
  spec.authors       = ["eskokado"]
  spec.email         = ["eskokado@gmail.com"]

  spec.summary       = %q{My Study Gem Plan.}
  spec.description   = %q{My Study Gem Plan.}
  spec.homepage      = "https://github.com/eskokado/my_study_gem_plan"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/eskokado/"
  spec.metadata["changelog_uri"] = "https://github.com/eskokado/eskokado"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/**"]
end
