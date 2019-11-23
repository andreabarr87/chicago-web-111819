require_relative "clothing_item"

class Shirt < ClothingItem
  attr_reader :size, :collar

  def initialize(args)
    super
    @size = args[:size]
    @collar = args[:collar]
  end

  def size_summary
    "This #{size} shirt has a #{collar} type collar."
  end

  def article
    "this"
  end
end
