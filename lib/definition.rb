class Definition

  @@def_entries = []

  define_method(:initialize) do |definition|
    @definition = definition
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

end
