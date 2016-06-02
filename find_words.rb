require './lib/loader'
require './lib/combiner'
require './lib/printer'

FILENAME = 'data/WordList.txt'

word_lists = Words::Loader.new(FILENAME).list
combined_words = Words::Combiner.new(word_lists).combine

puts 'List of pairs producing words of 6 chars length:'
Words::Printer.print combined_words
