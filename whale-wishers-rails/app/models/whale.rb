class Whale < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :species, presence: true

  validate :size_multiple_of_a_thousand

  def size_multiple_of_a_thousand
    errors.add(:size, "must be a multiple of 1 thousand") if size % 1000 != 0
  end
end
