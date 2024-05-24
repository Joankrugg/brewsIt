class AddYeastToStyles < ActiveRecord::Migration[7.1]
  def change
    add_reference :styles, :yeast, foreign_key: true
  end
end
