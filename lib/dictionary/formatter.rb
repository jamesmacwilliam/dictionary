module Dictionary
  module Formatter

    SPACES_TO_ADD = 12
    SEQUENCE_HEADER = "'sequences'"
    WORD_HEADER = "'words'"

    def console_out(sequences = @sequences)
      puts console_header
      sequences.each {|sequence, word| puts formatted_sequence(sequence, word)}
    end

    private

    def console_header
      formatted_sequence SEQUENCE_HEADER, WORD_HEADER,
        spaces_to_add: (SPACES_TO_ADD - (SEQUENCE_HEADER.length - 4))
    end

    def formatted_sequence(sequence, word, opts = {})
      opts = {space_char: ' ', spaces_to_add: SPACES_TO_ADD}.merge opts
      "#{sequence}#{opts[:space_char] * opts[:spaces_to_add]}#{word}"
    end
  end
end
