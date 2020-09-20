class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.integer :user_id, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
