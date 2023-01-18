class AddAdmiToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admi, :boolean, default: false
  end
end
