class Explorer < ActiveRecord::Base
  has_many :visits
  has_many :visited_planets, through: :visits, source: :planet
  has_many :visited_systems, through: :visited_planets, source: :system

  def self.all_visit_counts
    self.all.map do |explorer|
      explorer.name_and_visits
    end
  end

  def name_and_visits
    "#{self.name} - #{self.visits.count}\n"
  end

  def visits_for_planet(planet)
    self.visits.where({planet_id: planet.id})
  end

  def planets_by_visit_count
    self.visited_planets.max_by do |planet|
      self.visits_for_planet(planet).count
    end
  end

  def unvisited_planets
    # As a user, I want to see which planets an explorer has not visited
    # First we can get a list of all planets visited by this explorer
    # mine = self.visited_planets
    # then remove that list from the list of all existing planets
    # Planet.all - mine
    # and we would be left with the planets this explorer didn't visit
    Planet.all - self.visited_planets
  end
end
