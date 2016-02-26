class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :article_id
      t.integer :artcle_type
      t.text  :artcle
      t.text  :image
      t.timestamp :calender_at
      t.timestamp :created_at
      t.timestamp :updated_at
      t.integer :user_id
      t.string  :username
      t.text  :event
      t.timestamps
    end
  end
end
