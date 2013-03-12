class CreatePlatformTitles < ActiveRecord::Migration
  def change
    create_table :platform_titles do |t|
      t.integer :platform_id
      t.integer :title_id

      t.timestamps
    end
  end
end
