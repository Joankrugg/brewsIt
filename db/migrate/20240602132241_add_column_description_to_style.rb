class AddColumnDescriptionToStyle < ActiveRecord::Migration[7.1]
  def change
    add_column :styles, :description, :string
  end
end
