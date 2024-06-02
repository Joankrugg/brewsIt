class AddColumnOriginToStyle < ActiveRecord::Migration[7.1]
  def change
    add_column :styles, :origin, :string
  end
end
