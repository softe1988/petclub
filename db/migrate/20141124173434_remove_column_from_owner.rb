class RemoveColumnFromOwner < ActiveRecord::Migration
  def change
    remove_column :owners, :petclub_id, :string
  end
end
