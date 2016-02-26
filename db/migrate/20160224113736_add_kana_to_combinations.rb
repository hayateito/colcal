class AddKanaToCombinations < ActiveRecord::Migration
  def change
    add_column :combinations, :kana, :text
  end
end
