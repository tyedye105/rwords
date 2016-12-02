class Word
  @@word_entries = []

  define_method(:initialize) do |word_entry|
    @word_entry = word_entry
    @id = @@word_entries.length() + 1
    @definitions = []
  end

  define_method(:word_entry) do
    @word_entry
  end

  define_method(:id) do
    @id
  end
  define_method(:definitions) do
    @definitions
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

    define_singleton_method(:find) do |word_id|
      found_word = nil
      @@word_entries.each() do |entry|
        if entry.id() == word_id
          found_word = entry
        end
      end
      found_word
    end

    define_method(:add_definition) do |definition|
      @definitions.push(definition)
    end

end
