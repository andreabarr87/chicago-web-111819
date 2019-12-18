class CreateWishes < ActiveRecord::Migration[6.0]
  def change
    create_table :wishes do |t|
      t.string :title
      t.string :description
      t.integer :whale_id
      t.integer :wisher_id

      t.timestamps
    end
  end
end
