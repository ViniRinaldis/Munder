class CreateJoinTableUserMusicalGroup < ActiveRecord::Migration[5.0]
  def change
    create_join_table :users, :musical_groups
  end
end
