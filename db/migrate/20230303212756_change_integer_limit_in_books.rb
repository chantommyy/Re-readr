class ChangeIntegerLimitInBooks < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :barcode, :integer, limit: 8
  end
end
