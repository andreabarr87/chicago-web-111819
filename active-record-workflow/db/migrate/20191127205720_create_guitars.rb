class CreateGuitars < ActiveRecord::Migration[6.0]
  def change
    create_table :guitars do |t|
      t.string :wood
      t.integer :string_count
      t.integer :pickup_count
    end
  end
end
