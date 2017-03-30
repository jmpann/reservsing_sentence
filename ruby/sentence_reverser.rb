require "minitest/autorun"

class SentenceReverser

  def initialize(sentence)
    @sentence = sentence
  end

  def reverse

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
  end
end
