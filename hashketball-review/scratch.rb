# Define a method called get_names that takes an array of instructors and returns just their names
instructors = [
  {name: 'Duke', hometown: 'Grand Rapids', mood: 'excited'},
  {name: 'Jess', hometown: 'Connecticutville', mood: 'confident'},
  {name: 'Derick', hometown: 'Chicago', fav_ice_cream: "Pistachio"}
]

def get_names(instructors)
  instructors.map do |instructor|
    # instructor.[](:name)
    instructor[:name]
  end
end

p get_names(instructors)
