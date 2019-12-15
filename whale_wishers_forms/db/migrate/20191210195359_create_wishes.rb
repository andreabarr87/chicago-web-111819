class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.integer :whale_id

      t.timestamps
    end
  end
end
