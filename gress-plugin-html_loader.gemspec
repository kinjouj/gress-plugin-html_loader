# frozen_string_literal: true

require_relative "lib/gress/plugin/html_loader/version"

Gem::Specification.new do |spec|
  spec.name = "gress-plugin-html_loader"
  spec.version = Gress::Plugin::HtmlLoader::VERSION
  spec.authors = ["kinjouj"]
  spec.email = ["kinjouj@gmail.com"]
  spec.summary = "gress-plugin-html_loader"
  spec.description = "static html embedded template html"
  spec.homepage = "https://github.com/kinjouj"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kinjouj/gress-plugin-html_loader"
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 3.1.0"
end
