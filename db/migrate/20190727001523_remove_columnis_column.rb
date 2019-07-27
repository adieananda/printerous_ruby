class RemoveColumnisColumn < ActiveRecord::Migration[5.2]
  def change
	remove_column :users, :isColumn, :boolean
  end
end
