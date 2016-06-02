require 'rspec'
require_relative '../lib/combiner'

describe Words::Combiner do
  let(:word_list) { { 1 => ['a', 'b'],
                      2 => ['cc', 'dd'],
                      3 => ['eee', 'fff'],
                      4 => ['gggg', 'hhhh'],
                      5 => ['iiiii', 'kkkkk'],
                      6 => ['cchhhh', 'eeefff', 'akkkkk'] } }

  subject { described_class.new(word_list) }

  it "#combine" do
    expect(subject.combine).to include(['cc', 'hhhh'], ['eee', 'fff'], ['a', 'kkkkk'])
  end
end
