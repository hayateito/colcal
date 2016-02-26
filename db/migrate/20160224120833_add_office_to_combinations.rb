class AddOfficeToCombinations < ActiveRecord::Migration
  def change
    add_column :combinations, :office, :text
  end
end
