class AddColorToStyles < ActiveRecord::Migration[7.1]
  def change
    add_reference :styles, :color, foreign_key: true
  end
end
