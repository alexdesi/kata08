require 'rspec'
require_relative '../lib/loader'

describe Words::Loader do
  describe "#words_of_size" do
    let(:loader) { described_class.new('spec/fixtures/word_list.txt') }

    it "loads the words of size 6" do
      expect(loader.words_of_size(6)).to include('123456')
    end

    it "loads the words of size 4" do
      expect(loader.words_of_size(4)).to include('1234', '3456')
    end
  end

end
