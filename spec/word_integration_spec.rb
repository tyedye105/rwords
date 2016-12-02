require('rspec')
require('word')

describe(Word) do
  before() do
    @test_word = Word.new("box") 
  end


  describe("#word_entry")do
    it("returns the word entered.")do
    expect(@test_word.word_entry()).to(eq("box"))

    end
  end

end
