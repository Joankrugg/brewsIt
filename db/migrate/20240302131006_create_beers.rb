class CreateBeers < ActiveRecord::Migration[7.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.float :level

      t.timestamps
    end
  end
end
