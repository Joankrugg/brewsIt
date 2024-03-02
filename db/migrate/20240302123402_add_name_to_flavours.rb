class AddNameToFlavours < ActiveRecord::Migration[7.1]
  def change
    add_column :flavours, :name, :string
  end
end
