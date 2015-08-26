class CreateArtworksTable < ActiveRecord::Migration
  def change
      create_table :artworks do |t|
        t.string :title
        t.string :image_url
        t.integer :artist_id
      end
  end
end
