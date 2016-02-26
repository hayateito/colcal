class AddCombinationIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :combination_id, :integer
    add_column :users, :tanto, :text
    add_column :users, :sex, :text
    add_column :users, :birthday, :text
    add_column :users, :heightweight, :text
    add_column :users, :blood, :text
    add_column :users, :graduate, :text
    add_column :users, :hobby, :text
    add_column :users, :school, :text
    add_column :users, :debut, :text
  end
end
