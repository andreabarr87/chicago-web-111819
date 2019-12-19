class Wish < ApplicationRecord
  belongs_to :whale
  belongs_to :wisher, class_name: :Whale, optional: true
  has_many :tag_assignments
  has_many :tags, through: :tag_assignments
end
