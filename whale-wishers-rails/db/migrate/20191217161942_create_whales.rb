class CreateWhales < ActiveRecord::Migration[6.0]
  def change
    create_table :whales do |t|
      t.string :name
      t.string :species
      t.integer :size

      t.timestamps
    end
  end
end
