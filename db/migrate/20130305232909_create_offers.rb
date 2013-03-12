class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.integer :user_id
      t.integer :platform_title_id
      t.float :price
      t.text :text

      t.timestamps
    end
  end
end
