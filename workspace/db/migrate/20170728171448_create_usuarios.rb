class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.integer :password

      t.timestamps null: false
    end
  end
end
 