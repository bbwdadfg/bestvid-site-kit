Gem::Specification.new do |spec|
  spec.name = "bestvid-site-kit"
  spec.version = "0.1.2"
  spec.summary = "Small URL helpers for BestVid links."
  spec.description = "Small URL helpers for building links to https://bestvid.net."
  spec.authors = ["BestVid"]
  spec.email = ["support@bestvid.net"]
  spec.homepage = "https://bestvid.net"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0"
  spec.metadata = {
    "homepage_uri" => "https://bestvid.net",
    "source_code_uri" => "https://github.com/bbwdadfg/bestvid-site-kit"
  }
  spec.files = Dir["lib/**/*.rb", "README.md", "LICENSE"]
  spec.require_paths = ["lib"]
end
