class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :name
      t.integer :producer_id

      t.timestamps
    end
  end
end
