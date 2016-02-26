class AddTantoToCombinations < ActiveRecord::Migration
  def change
    add_column :combinations, :tanto, :text
  end
end
