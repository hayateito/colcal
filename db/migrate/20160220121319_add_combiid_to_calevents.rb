class AddCombiidToCalevents < ActiveRecord::Migration
  def change
    add_column :calevents, :combiid, :integer
  end
end
