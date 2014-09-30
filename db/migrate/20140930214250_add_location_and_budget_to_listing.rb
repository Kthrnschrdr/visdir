class AddLocationAndBudgetToListing < ActiveRecord::Migration
  def change
    add_column :listings, :location, :string
    add_column :listings, :budget, :string
  end
end
