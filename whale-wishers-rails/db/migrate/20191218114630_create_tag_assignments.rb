class CreateTagAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_assignments do |t|
      t.integer :wish_id
      t.integer :tag_id
      
      t.timestamps
    end
  end
end
