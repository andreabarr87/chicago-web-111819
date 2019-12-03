class CreateVisits < ActiveRecord::Migration[6.0]
  def change
    create_table :visits do |t|
      t.integer :planet_id
      t.integer :explorer_id
    end
  end
end
