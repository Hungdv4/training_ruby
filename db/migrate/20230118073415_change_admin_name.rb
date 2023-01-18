class ChangeAdminName < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :admi , :admin
  end
end
