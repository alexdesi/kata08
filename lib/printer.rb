module Words
  class Printer
    def self.print(word_list)
      word_list.each do |head, tail|
        puts "#{head} + #{tail} => #{head + tail}"
      end
    end
  end
end
