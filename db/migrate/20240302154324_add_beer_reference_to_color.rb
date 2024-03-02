class AddBeerReferenceToColor < ActiveRecord::Migration[7.1]
  def change
    add_reference :beers, :color, foreign_key: true
  end
end
