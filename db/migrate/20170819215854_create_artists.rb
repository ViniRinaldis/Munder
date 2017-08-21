class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :style
      t.string :region

      t.timestamps
    end

    add_attachment :artists, :avatar
  end
end
