module Dictionary
  module Parser

    def parse_file
      @sequences = {}
      process_lines
      @sequences
    end

    private

    def process_lines
      File.read(@file_path).each_line { |line| populate_sequences_from_word(line.gsub("\n", '')) }
    end

    def populate_sequences_from_word(line)
      (line.length - 3).times {|n| add_sequence line[n..(n+3)], line}
    end

    def add_sequence(sequence, word)
      if sequence.length == 4
        if @sequences[sequence]
          @sequences.delete(sequence)
        else
          @sequences[sequence] = word
        end
      end
    end

  end
end
