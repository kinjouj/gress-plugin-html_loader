# frozen_string_literal: true

module Gress
  module Plugin
    class HtmlLoader < Gress::Plugin::Preprocessor
      def run(mode)
        return unless mode.to_s == "html"

        Dir.glob("themes/html/**/*.html").each do |file|
          basename = File.basename(file, ".html")
          register_context("html_#{basename}": File.read(file))
        end
      end
    end
  end
end
