class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.text :exif
      t.references :user, index: true

      t.timestamps
    end
  end
end
