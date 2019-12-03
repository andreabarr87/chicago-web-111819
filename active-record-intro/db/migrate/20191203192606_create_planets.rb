class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :type
      t.integer :system_id
    end
  end
end
