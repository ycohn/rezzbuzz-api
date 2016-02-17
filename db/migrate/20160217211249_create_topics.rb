class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.integer :building_id
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
