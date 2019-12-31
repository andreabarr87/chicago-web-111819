class Employee < ApplicationRecord
  belongs_to :dog

  # validates :alias, uniqueness: true, presence: true
  # validates :title, uniqueness: true, presence: true

  validates_uniqueness_of :title, :alias, {case_sensitive: false}
  validates_presence_of :title, :alias

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
end
