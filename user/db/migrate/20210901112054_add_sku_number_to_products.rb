class AddSkuNumberToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :sku_number, :string
    add_index :products, :sku_number
  end
end
