class AddWebsiteTwitterToUser < ActiveRecord::Migration
  def change
    add_column :users, :website, :string
    add_column :users, :twitter, :string 
  end
end
