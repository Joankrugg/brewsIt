class CreateStyleTextures < ActiveRecord::Migration[7.1]
  def change
    create_table :style_textures do |t|
      t.references :style, null: false, foreign_key: true
      t.references :texture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
