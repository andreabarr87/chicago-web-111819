class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
    end
  end
end
