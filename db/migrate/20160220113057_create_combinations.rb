class CreateCombinations < ActiveRecord::Migration
  def change
    create_table :combinations do |t|
        t.integer :combiid
      t.timestamps null: false
    end
  end
end
