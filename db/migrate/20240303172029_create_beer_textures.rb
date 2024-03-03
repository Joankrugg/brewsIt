class CreateBeerTextures < ActiveRecord::Migration[7.1]
  def change
    create_table :beer_textures do |t|
      t.references :beer, null: false, foreign_key: true
      t.references :texture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
