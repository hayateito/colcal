class AddTwitterToUsers < ActiveRecord::Migration
  def change
    add_column :users, :twitter, :text
  end
end
