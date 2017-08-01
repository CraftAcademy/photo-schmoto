class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.integer :price
      t.string :image_path

      t.timestamps
    end
  end
end
