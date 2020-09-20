class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :description
      t.integer :book_id, null: false, foreign_key: true
      t.string :img_url

      t.timestamps
    end
  end
end
