class CreateTastes < ActiveRecord::Migration[7.1]
  def change
    create_table :tastes do |t|
      t.string :name

      t.timestamps
    end
  end
end
