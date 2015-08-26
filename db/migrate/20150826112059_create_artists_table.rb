class CreateArtistsTable < ActiveRecord::Migration
  def change
  	  create_table :artists do |t|
        t.string :fname
        t.string :lname
      end
  end
end
