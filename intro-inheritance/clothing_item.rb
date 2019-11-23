class ClothingItem
  attr_reader :material, :color, :swagtastic, :quantity, :cost

  def self.descendants
    ObjectSpace.each_object(Class).select { |klass| klass < self }
  end

  # ClothingItem.new("linen", "grey", false, 3, 7)

  # ClothingItem.new({:material => "linen", :color => "grey", :swagtastic => false...})
  def initialize(args = {})
    # binding.pry
    @material = args[:material]
    @color = args[:color]
    @swagtastic = args[:swagtastic] || true
    @quantity = args[:quantity]
    @cost = args[:cost]
    # binding.pry
  end

  def summary
    # binding.pry
    <<-HEREDOC
      #{self.article.capitalize} #{self.class.to_s.upcase} is crafted from the finest #{material}
      and carries a delightful #{color} hue.
      Is it swagtastic? The answer would be #{swagtastic.to_s.capitalize}!
      You can buy up to #{quantity} of these for #{cost} apiece.
      ---------
      Thanks for browsing at the Cost Plus Zero Shop
    HEREDOC
  end
end
