module Words
  class Combiner
    LENGTH = 6

    attr :word_lists
    attr :valid_combinations

    def initialize(word_lists)
      @word_lists = word_lists
      @valid_combinations = []
    end

    def combine
      (1..LENGTH - 1).each do |n|
        puts "Processing combination #{n} - #{LENGTH - n}..."
        combine_words_of_length(n, LENGTH - n)
      end
      valid_combinations
    end

    private

    def combine_words_of_length(n, m)
      words_of_length(n).each do |head|
        words_of_length(m).each do |tail|
          valid_combinations << [head, tail] if is_included?(head, tail)
        end
      end
    end

    def is_included?(head, tail)
      words_of_length(6).include?(head + tail)
    end

    def words_of_length(n)
      word_lists[n] || []
    end
  end

end
