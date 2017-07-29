class AddUserIdToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :user_id, :integer
  end
end
