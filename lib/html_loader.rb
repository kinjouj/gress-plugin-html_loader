# frozen_string_literal: true

module Gress
  module Plugin
    class HtmlLoader < Gress::Plugin::Preprocessor
      def run
        files = Dir.glob("themes/**/*.html")
        files.each do |file|
          basename = File.basename(file, ".html")
          register_context("html_#{basename}": File.read(file))
        end
      end
    end
  end
end
