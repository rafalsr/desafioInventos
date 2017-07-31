class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.text :description

      t.timestamps null: false
    end
  end
end
