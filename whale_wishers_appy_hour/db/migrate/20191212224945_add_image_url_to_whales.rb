class AddImageUrlToWhales < ActiveRecord::Migration
  def change
    add_column :whales, :image_url, :string
  end
end
