class Addforeignkeytolisting < ActiveRecord::Migration
  def up
    add_column :listings, :user_id, :integer
  end

  def down
  end
end
