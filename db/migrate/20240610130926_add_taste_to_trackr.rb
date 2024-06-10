class AddTasteToTrackr < ActiveRecord::Migration[7.1]
  def change
    add_reference :trackrs, :taste, foreign_key: true
  end
end
