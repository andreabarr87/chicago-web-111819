ActiveRecord::Base.logger = Logger.new(STDOUT)

System.destroy_all
Planet.destroy_all
Explorer.destroy_all
Visit.destroy_all

sol = System.create(name: "Solar System")

planets_info = {
  "earth" => "rock",
  "mercury" => "rock",
  "venus" => "gas"
}

planets_info.each do |k, v|
  Planet.create(system:sol, name: k, material: v)
end

neptune = Planet.create(system:sol, name: "Neptune", material: "gas")

groot = Explorer.create(name: "Groot", age: 1000, vice: "sullen narcissism")
rocket = Explorer.create(name: "Rocket", age: 8, vice: "pica")

explorers = [groot,rocket]

explorers.each do |e|
  Visit.create(explorer: e, planet: neptune)
end
