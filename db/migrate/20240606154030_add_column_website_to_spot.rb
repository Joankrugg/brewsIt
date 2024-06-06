class AddColumnWebsiteToSpot < ActiveRecord::Migration[7.1]
  def change
    add_column :spots, :website, :string
  end
end
