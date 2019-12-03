class Explorer < ActiveRecord::Base
  has_many :visits
  has_many :visited_planets, through: :visits, source: :planet
end
