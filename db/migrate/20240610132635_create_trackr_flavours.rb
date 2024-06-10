class CreateTrackrFlavours < ActiveRecord::Migration[7.1]
  def change
    create_table :trackr_flavours do |t|
      t.references :trackr, null: false, foreign_key: true
      t.references :flavour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
