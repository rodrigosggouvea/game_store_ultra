class CreateOfferImages < ActiveRecord::Migration
  def change
    create_table :offer_images do |t|

      t.timestamps
    end
  end
end
