class Word

  define_method(:initialize) do |word_entry|
    @word_entry = word_entry
  end

  define_method(:word_entry) do
    @word_entry
  end

end
