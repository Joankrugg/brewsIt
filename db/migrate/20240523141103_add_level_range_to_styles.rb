class AddLevelRangeToStyles < ActiveRecord::Migration[7.1]
  def change
    add_column :styles, :level_min, :float
    add_column :styles, :level_max, :float
  end
end
