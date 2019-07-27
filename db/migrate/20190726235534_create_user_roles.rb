class CreateUserRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_roles do |t|
	  t.integer :user_id, null: false
	  t.string :user_role, null: false
      t.timestamps
    end
  end
end
