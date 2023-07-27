class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.boolean :status
      t.string :species
      t.string :type
      t.boolean :gender
      t.string :origin_name
      t.string :origin_url
      t.string :location_name
      t.string :location_url
      t.string :image_url
      t.string :episode_url
      t.string :url

      t.timestamps
    end
  end
end
