# frozen_string_literal: true

require "simplecov-material"

SimpleCov.formatter = SimpleCov::Formatter::MaterialFormatter
SimpleCov.start do
  add_filter "/spec/"
  enable_coverage :branch
end
