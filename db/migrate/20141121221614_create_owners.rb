class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :petclub_id

      t.timestamps
    end
  end
end
