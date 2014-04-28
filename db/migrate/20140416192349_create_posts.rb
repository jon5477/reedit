class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :content
      t.integer :rating
      t.integer :user_id
      t.timestamp :created_at

      t.timestamps
    end
  end
end
