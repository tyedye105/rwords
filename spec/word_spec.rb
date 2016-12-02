require('rspec')
require('word')
# require('definition')

describe(Word) do
  before() do
    Word.clear()
  end


  describe("#word_entry") do
    it("returns the word entered.") do
      test_word = Word.new("box")
      expect(test_word.word_entry()).to(eq("box"))
    end
  end

  describe("#is_word?") do
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
    it("will save a word, into the storage array of the Word class")do
      test_word = Word.new("rock")
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end

  describe('.clear') do
    it('will clear the storage array of the Word class') do
      test_word = Word.new("rock")
      test_word.save()
      Word.clear()
      expect(Word.clear()).to(eq([]))
    end
  end

  describe("#id") do
    it("return the id number asscoiate with the word.") do
    test_word = Word.new("rocking")
    test_word.save()
    expect(test_word.id()).to(eq(1))
    end
  end

  describe(".find") do
    it('will find the word by finding the associated id') do
      test_word = Word.new("wand")
      test_word.save()
      test_word2 = Word.new("laser")
      test_word2.save
      expect(Word.find(test_word.id())).to(eq(test_word))
    end
  end


end
