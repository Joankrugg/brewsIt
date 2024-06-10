class CreateTrackrTextures < ActiveRecord::Migration[7.1]
  def change
    create_table :trackr_textures do |t|
      t.references :trackr, null: false, foreign_key: true
      t.references :texture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
