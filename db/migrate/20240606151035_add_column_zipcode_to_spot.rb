class AddColumnZipcodeToSpot < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :zipcode, :string
  end
end
