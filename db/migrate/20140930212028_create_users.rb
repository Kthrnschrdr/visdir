class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :location
      t.string :budget
      t.boolean :pro_status

      t.timestamps
    end
  end
end
