# frozen_string_literal: true

module Zeitwerk
  class GemInflector < Inflector # :nodoc:
    # @param root_file [String]
    def initialize(root_file)
      namespace     = File.basename(root_file, ".rb")
      lib_dir       = File.dirname(root_file)
      @version_file = File.join(lib_dir, namespace, "version.rb")
    end

    # @param basename [String]
    # @param abspath [String]
    # @return [String]
    def camelize(basename, abspath)
      (basename == "version" && abspath == @version_file) ? "VERSION" : super
    end
  end
end
