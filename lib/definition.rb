class Definition

  define_method(:initialize) do |definition|
    @definition = definition
  end

  define_method(:define) do
    @definition
  end

end
