class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friendships, id: false do |t|
      t.references :user
      t.references :friend
    end
  end
end
