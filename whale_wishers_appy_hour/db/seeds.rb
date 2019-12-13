Whale.destroy_all
Wish.destroy_all

# Write the names I'll use, and a list of species to sample from
names_and_pics = {
  "Keiko": "whale1.png",
  "Shamu": "whale2.jpg",
  "Delta": "whale3.jpeg",
  "Dawn": "whale4.jpg",
  "Humphrey": "whale5.jpeg",
  "Tom": "whale6.jpg",
  "Moby": "whale7.png",
  "Laboon": "whale8.jpeg"
}

species_strings = %w(humpback blue baleen gray minke )

# Generate a random number and set a random species for each whale name,
# and create new whales with those three attributes
names_and_pics.each do |name, pic|
  random_size = (1 + rand(15)) * 1000
  Whale.create(name: name, species: species_strings.sample, size: random_size, image_url: pic)
end


# Create some real-sounding starts for our wishes
wish_intro_strings = ["I wish for you to", "May you always find the strength to", "Here's hoping that you can", "I wish you had the power to", "I hope for you to", "Sending a wish, that you may one day"]

100.times do
  # Going to create a hundred wishes, each assigned to a whale.
  # Build each wish title step by step, with the help of #sample and Faker
  random_action = Faker::Company.bs
  joiner_word = ["alongside", "with", "in tandem with", "with the aid of"].sample
  primordial_name = Faker::Ancient.primordial
  location_clause = "#{Faker::Color.color_name} sea in the ocean planet orbiting #{Faker::Space.star}"

  full_title = "#{wish_intro_strings.sample} #{random_action} #{joiner_word} #{primordial_name}. May the two of you swim together as one, through every #{location_clause}."

  # Use Active Record method to get a list of all currently saved Whale ids
  whale_ids = Whale.ids

  receiver_id = whale_ids.shuffle.pop
  sender_id = whale_ids.shuffle.pop


  Wish.create(title: full_title, whale_id: receiver_id, wisher_id: sender_id)
end
