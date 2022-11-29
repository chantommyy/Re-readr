class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :genre
      t.string :name
      t.string :author
      t.string :photo
      t.string :condition
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
