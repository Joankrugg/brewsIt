class AddBeerReferenceToTaste < ActiveRecord::Migration[7.1]
  def change
    add_reference :beers, :taste, foreign_key: true
  end
end
