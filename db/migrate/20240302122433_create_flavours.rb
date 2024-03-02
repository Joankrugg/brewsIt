class CreateFlavours < ActiveRecord::Migration[7.1]
  def change
    create_table :flavours do |t|

      t.timestamps
    end
  end
end
