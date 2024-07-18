class CreatePhotoGalleries < ActiveRecord::Migration[7.1]
  def change
    create_table :photo_galleries do |t|
      t.string :title

      t.timestamps
    end
  end
end
