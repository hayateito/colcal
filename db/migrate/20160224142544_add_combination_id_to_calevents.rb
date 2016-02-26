class AddCombinationIdToCalevents < ActiveRecord::Migration
  def change
    add_column :calevents, :combination_id, :integer
    add_column :calevents, :user_id, :integer
  end
end
