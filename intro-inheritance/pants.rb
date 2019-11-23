require_relative "clothing_item"

class Pants < ClothingItem

  attr_reader :size, :inseam

  def initialize(args = {})
    super
    @size = args[:size]
    @inseam = args[:inseam]
    @color = "Iridescent #{args[:color]}"
  end

  def size_summary
    "These #{size} pants have a #{inseam} in. inseam."
  end

  def article
    "these"
  end


end
