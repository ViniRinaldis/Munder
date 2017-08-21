class CreateBandMembers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :artists, :users do |t|
    end
  end
end
