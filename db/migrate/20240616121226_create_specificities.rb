class CreateSpecificities < ActiveRecord::Migration[7.1]
  def change
    create_table :specificities do |t|
      t.references :spot, null: false, foreign_key: true
      t.boolean :snack
      t.boolean :happy_hour
      t.float :cheapest_beer
      t.integer :draft_number

      t.timestamps
    end
  end
end
