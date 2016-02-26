class CreateCalevents < ActiveRecord::Migration
  def change
    create_table :calevents do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.string :color
      t.boolean :allDay

      t.timestamps null: false
    end
  end
end
