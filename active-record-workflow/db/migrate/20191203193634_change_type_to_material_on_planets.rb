class ChangeTypeToMaterialOnPlanets < ActiveRecord::Migration[6.0]
  def change
    rename_column :planets, :type, :material
  end
end
