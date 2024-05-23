class AddSpotReferenceToType < ActiveRecord::Migration[7.1]
  def change
    add_reference :spots, :type, foreign_key: true
  end
end
