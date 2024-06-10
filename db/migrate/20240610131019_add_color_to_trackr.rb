class AddColorToTrackr < ActiveRecord::Migration[7.1]
  def change
    add_reference :trackrs, :color, foreign_key: true
  end
end
