class AddOfferIdToOfferImages < ActiveRecord::Migration
  def change
    add_column :offer_images, :offer_id, :integer
  end
end
