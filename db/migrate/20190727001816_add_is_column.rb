class AddIsColumn < ActiveRecord::Migration[5.2]
  def change
	add_column :users, :isManager, :boolean
  end
end
