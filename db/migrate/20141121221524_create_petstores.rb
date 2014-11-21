class CreatePetstores < ActiveRecord::Migration
  def change
    create_table :petstores do |t|
      t.string :name

      t.timestamps
    end
  end
end
