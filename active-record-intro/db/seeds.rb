ActiveRecord::Base.logger = Logger.new(STDOUT)

Guitar.destroy_all
Pick.destroy_all


Guitar.create(wood: "balsa", string_count: 3, pickup_count: 4)
Guitar.create(wood: "pine", string_count: 6, pickup_count: 1)

Pick.create(brand: "Dunlop", size: ".78mm", guitar_id: Guitar.ids.sample)
Pick.create(brand: "Dunlop", size: ".75mm", guitar_id: Guitar.ids.sample)
Pick.create(brand: "Indigo Girls", size: "1.0mm", guitar_id: Guitar.ids.sample)
