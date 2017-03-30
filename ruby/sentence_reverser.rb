require "minitest/autorun"
require "pry"

class SentenceReverser

  attr_reader :sentence

  def initialize(sentence)
    @sentence = sentence
  end

  def reverse
    sentence_array = sentence.split(' ')

    reversed_array = []

    sentence_array.each do |word|
      reversed_array.unshift(word)
    end
    return reversed_array.join(' ')
  end

end


# tests

describe SentenceReverser do
  describe "when a sentence is given" do
    it "must reverse the sentence" do
      @sr = SentenceReverser.new('This is the best')
      result = @sr.reverse
      result.must_equal 'best the is This'
    end

    it "must remove whitespace and reverse the sentence" do
      @sr = SentenceReverser.new('    This is    the    best   ')
      result = @sr.reverse
      result.must_equal 'best the is This'
    end
  end
end
