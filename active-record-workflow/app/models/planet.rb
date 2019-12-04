class Planet < ActiveRecord::Base
  # belongs_to :cluster, foreign_key: :system_id, class_name: :System
  belongs_to :system
  has_many :visits
  has_many :visitors, through: :visits, source: :explorer
  # Belonging assumptions!
  # "looks like they are saying 'system' here.
  # that means there must be a column on this class called 'system_id'
  # and there is an associated id field on a table called 'systems'."

  def self.explorers_of_planet_name(searched_name)
    # name => "Neptune"
    found_planet = self.find_by(name: searched_name)
    print_explorers_info(found_planet.visitors)
  end

  def self.print_explorers_info(explorers)
    explorers.each do |explorer|
      puts explorer.name_and_visits
    end
  end
end
