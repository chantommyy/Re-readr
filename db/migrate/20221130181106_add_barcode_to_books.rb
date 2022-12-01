class AddBarcodeToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :barcode, :integer
  end
end
