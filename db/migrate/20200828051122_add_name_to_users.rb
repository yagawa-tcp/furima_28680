class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :family_name, :string
    add_column :users, :first_huri, :string
    add_column :users, :family_huri, :string
    add_column :users, :birthday, :date
  end
end
