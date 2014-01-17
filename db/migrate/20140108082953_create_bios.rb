class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
    	t.string :date_of_birth
    	t.string :place_of_birth
    	t.text :skills
    	t.text :favorite
    	t.text :dream
    	t.integer :friend_id
    	t.timestamps
    end
  end
end
