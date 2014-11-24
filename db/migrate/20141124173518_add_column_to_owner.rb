class AddColumnToOwner < ActiveRecord::Migration
  def change
    add_column :owners, :petstore_id, :string
  end
end
