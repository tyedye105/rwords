class Word
    @@word_entries = []
  define_method(:initialize) do |word_entry|
    @word_entry = word_entry
  end

  define_method(:word_entry) do
    @word_entry
  end

  define_method(:is_word?) do
    numbers = ['1', '2', '3', '4', '5', '6', '7', '8', '9','0']
    is_word = nil
    numbers.each() do |number|
      @word_entry.include?(number)
        if @word_entry.include?(number) == true
          is_word = false
        else
          true
        end
      end
        is_word
    end

    define_singleton_method(:all) do
      @@word_entries
    end

    define_method(:save) do
      @@word_entries.push(self)
    end

    define_singleton_method(:clear) do
      @@word_entries = []
    end

end
