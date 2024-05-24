class CreateStyleFlavours < ActiveRecord::Migration[7.1]
  def change
    create_table :style_flavours do |t|
      t.references :style, null: false, foreign_key: true
      t.references :flavour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
