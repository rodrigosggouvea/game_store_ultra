class AddFinalizedToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :finalized, :boolean
  end
end
