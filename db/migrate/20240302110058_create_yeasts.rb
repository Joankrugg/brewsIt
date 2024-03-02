class CreateYeasts < ActiveRecord::Migration[7.1]
  def change
    create_table :yeasts do |t|
      t.string :name

      t.timestamps
    end
  end
end
