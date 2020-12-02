# frozen_string_literal: true

module Yarnlock
  class Config
    attr_accessor :node_path, :script_dir, :return_collection, :application_path

    def initialize
      @node_path = 'node'
      @script_dir = File.expand_path '../../scripts', __dir__
      @return_collection = true
      @application_path = Dir.pwd #where the package.json is
    end
  end
end
