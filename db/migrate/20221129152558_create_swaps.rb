class CreateSwaps < ActiveRecord::Migration[7.0]
  def change
    create_table :swaps do |t|
      t.references :request, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
