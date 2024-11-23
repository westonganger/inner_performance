require_relative "lib/inner_performance/version"

Gem::Specification.new do |spec|
  spec.name        = "inner_performance"
  spec.version     = InnerPerformance::VERSION
  spec.authors     = ["mbajur"]
  spec.email       = ["mbajur@gmail.com"]
  spec.homepage    = "https://github.com/mbajur"
  spec.summary     = "Summary of InnerPerformance."
  spec.description = "Description of InnerPerformance."

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/mbajur"
  spec.metadata["changelog_uri"] = "https://github.com/mbajur"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.5"
end
