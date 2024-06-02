class AddColumnStyleFamilyToStyle < ActiveRecord::Migration[7.1]
  def change
    add_column :styles, :style_family, :string
  end
end
