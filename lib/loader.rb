require 'set'

module Words
  class Loader
    attr :list

    def initialize(filename)
      @list = {}
      @filename = filename
      load
    end

    def words_of_size(n)
      list[n]
    end

    private

    def load
      File.open(@filename).each do |word|
        add word
      end
    end

    def add word
      word = word.strip
      id = word.size
      list[id] = Set.new unless list[id]
      list[id] << word
    end
    
  end
end
