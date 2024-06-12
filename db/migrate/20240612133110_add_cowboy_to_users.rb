class AddCowboyToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :cowboy, :boolean, null: false, default: false
  end
end
