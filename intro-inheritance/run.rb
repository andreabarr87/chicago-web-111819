require_relative "shirt"
require_relative "pants"
require_relative "clothing_item"
require "pry"


pants = Pants.new({material: "nylon", color: "lime", swagtastic: true, quantity: 17, cost: 20, size: "32/30", inseam: 30})

shirt = Shirt.new(material: "nylon", color: "lime", swagtastic: true, quantity: 17, cost: 20, size: "medium", collar: "v-neck")

puts shirt.summary
puts pants.summary

binding.pry
