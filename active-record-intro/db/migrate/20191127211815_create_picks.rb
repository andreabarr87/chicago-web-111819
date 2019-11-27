class CreatePicks < ActiveRecord::Migration[6.0]
  def change
    create_table :picks do |t|
      t.string :brand
      t.string :size
      t.integer :guitar_id
    end
  end
end
