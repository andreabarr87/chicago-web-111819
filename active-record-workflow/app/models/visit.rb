class Visit < ActiveRecord::Base
  belongs_to :explorer
  belongs_to :planet
end
