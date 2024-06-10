class AddYeastToTrackr < ActiveRecord::Migration[7.1]
  def change
    add_reference :trackrs, :yeast, foreign_key: true
  end
end
