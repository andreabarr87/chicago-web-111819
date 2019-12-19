class Tag < ApplicationRecord
  has_many :tag_assignments
  has_many :wishes, through: :tag_assignments
end
