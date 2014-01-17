class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
    	t.string :first_name
    	t.string :last_name
    	t.integer :age
    	t.string :sex
    	t.string :photo
    	t.timestamps
    end
  end
end
