class AddBeerReferenceToStyle < ActiveRecord::Migration[7.1]
  def change
    add_reference :beers, :style, foreign_key: true
  end
end
