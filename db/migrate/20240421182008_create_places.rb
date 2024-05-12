class CreatePlaces < ActiveRecord::Migration[7.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.string :city
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
