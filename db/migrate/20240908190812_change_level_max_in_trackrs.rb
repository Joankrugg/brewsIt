class ChangeLevelMaxInTrackrs < ActiveRecord::Migration[7.1]
  def up
    change_column :trackrs, :level_max, :float
  end

  def down
    change_column :trackrs, :level_max, :integer
  end
end

