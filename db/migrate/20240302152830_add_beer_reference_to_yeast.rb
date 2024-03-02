class AddBeerReferenceToYeast < ActiveRecord::Migration[7.1]
  def change
    add_reference :beers, :yeast, foreign_key: true
  end
end
