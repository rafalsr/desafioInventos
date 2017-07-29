class AddCargoToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :cargo, :string
  end
end
