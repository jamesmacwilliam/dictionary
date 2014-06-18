require_relative 'dictionary/parser'
require_relative 'dictionary/formatter'

module Dictionary
  class Sequencer
    include Formatter
    include Parser

    attr_accessor :file_path, :sequences

    def initialize(file_path = File.expand_path(File.join(File.dirname(__FILE__), "../dictionary.txt")))
      @file_path = file_path
      parse_file
    end
  end
end
