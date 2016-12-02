require('rspec')
require('word')

describe(Word) do


  describe("#word_entry")do
    it("returns the word entered.")do
      test_word = Word.new("box")
      expect(test_word.word_entry()).to(eq("box"))
    end
  end

  describe("#is_word?")do
    it("returns false if the word contains numbers.")do
      test_word = Word.new("3dog32")
      expect(test_word.is_word?()).to(eq(false))
    end
  end

  describe(".all") do
    it("return an empty array at first.")do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("it will save a word, into the Word class")do
      test_word = Word.new("rock")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

end
