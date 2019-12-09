class AddSpeciesToWhales < ActiveRecord::Migration
  def change
    add_column :whales, :species, :string
  end
end
