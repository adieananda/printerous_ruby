class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
	  t.string :name, limit:100,null: false
	  t.string :phone, limit:100, null: false
	  t.string :email, limit:100, null: false
	  t.string :website, null: false
	  t.string :logo,  null: false
      t.timestamps null: false
    end 
  end
end
