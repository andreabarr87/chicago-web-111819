class CreateExplorers < ActiveRecord::Migration[6.0]
  def change
    create_table :explorers do |t|
      t.string :name
      t.string :vice
      t.integer :age
    end
  end
end
