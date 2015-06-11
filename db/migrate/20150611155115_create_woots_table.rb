class CreateWootsTable < ActiveRecord::Migration
  def change
        create_table :woots do |t|
      t.integer :user_id
      t.string :body

      t.timestamps
    end
  end
end
