class CreateWhales < ActiveRecord::Migration
  def change
    create_table :whales do |t|
      t.string :name
      t.integer :size
    end
  end
end
