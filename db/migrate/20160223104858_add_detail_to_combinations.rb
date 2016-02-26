class AddDetailToCombinations < ActiveRecord::Migration
  def change
    add_column :combinations, :detail, :text
    add_column :combinations, :key, :string, :unique => true
  end
end
