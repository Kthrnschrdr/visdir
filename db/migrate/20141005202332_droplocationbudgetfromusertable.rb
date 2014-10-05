class Droplocationbudgetfromusertable < ActiveRecord::Migration
  def up
  end

  def down
    remove_column :users, :budget, :string
    remove_column :users, :location, :string
  end
end
