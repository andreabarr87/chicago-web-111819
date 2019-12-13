class Whale < ActiveRecord::Base
  has_many :written_wishes, class_name: :Wish, foreign_key: :wisher_id
  has_many :supported_whales, through: :written_wishes, source: :whale
  has_many :received_wishes, class_name: :Wish, foreign_key: :whale_id
  has_many :whale_wishers, through: :received_wishes, source: :wisher

  def display_font_size
    # returns an integer based on size of the whale, to be used when sizing the whale's wishes
    ((self.size / 1000) * 0.15) + 0.3
  end
end
