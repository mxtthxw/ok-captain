class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :description
      t.decimal :cost
      t.string :origin
      t.string :destination
      t.integer :containers
      t.integer :boat_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
