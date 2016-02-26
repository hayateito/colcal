class AddImageToCombinations < ActiveRecord::Migration
  def change
    add_column :combinations, :image, :string
  end
end
