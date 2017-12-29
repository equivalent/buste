module CardValue
  extend self

  def value_list
    list = (7..10).to_a + [:dolnik, :hornik, :kral, :eso]
    list.map(&:to_s)
  end
end
