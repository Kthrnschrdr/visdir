class Addemailpasswordtouser < ActiveRecord::Migration
  def up
    add_column :users, :password_digest, :string
    add_column :users, :email, :string 
  end

  def down
  end
end
