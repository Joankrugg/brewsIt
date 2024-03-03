class CreateBeerFlavours < ActiveRecord::Migration[7.1]
  def change
    create_table :beer_flavours do |t|
      t.references :beer, null: false, foreign_key: true
      t.references :flavour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
