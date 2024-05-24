class AddTasteToStyles < ActiveRecord::Migration[7.1]
  def change
    add_reference :styles, :taste, foreign_key: true
  end
end
