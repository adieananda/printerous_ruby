class UpdateTableUsers < ActiveRecord::Migration[5.2]
  def change
	add_column :users, :avatar, :string
	add_column :users, :phone, :string
	add_column :users, :organization_id, :integer
	add_column :users, :isColumn, :boolean 
  end
end
