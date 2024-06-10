class CreateTrackrs < ActiveRecord::Migration[7.1]
  def change
    create_table :trackrs do |t|
      t.float :level_min
      t.integer :level_max

      t.timestamps
    end
  end
end
