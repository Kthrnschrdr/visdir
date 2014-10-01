class Addphototolisting < ActiveRecord::Migration
  def up
    add_column :listings, :photo, :string
  end

  def down
  end
end
