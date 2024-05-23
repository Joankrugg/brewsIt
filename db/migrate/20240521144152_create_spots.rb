class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.string :address
      t.string :city
      t.integer :type
      t.boolean :active

      t.timestamps
    end
  end
end
