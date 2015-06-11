class CreateFollowsTable < ActiveRecord::Migration
  def change
        create_table :follows do |t|
      t.integer :fan_id
      t.integer :star_id

      t.timestamps
    end
  end
end
