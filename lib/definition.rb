class Definition

  @@def_entries = []

  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@def_entries.length() + 1
  end

  define_method(:define) do
    @definition
  end

  define_singleton_method(:all) do
    @@def_entries
  end

  define_method(:save) do
    @@def_entries.push(self)
  end

  define_singleton_method(:clear) do
    @@def_entries = []
    end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |def_id|
    found_def = nil
    @@def_entries.each() do |def_entry|
      if def_entry.id() == def_id
        found_def = def_entry
      end
    end
    found_def
  end


end
