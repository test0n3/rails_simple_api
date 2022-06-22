class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, limit: 40
      t.text :description, default: ''
      t.string :vendor, limit: 100
      t.integer :price, default: 0
      t.string :currency, default: ''
      t.integer :stock, default: 0
      t.string :image_url, default: ''
      t.string :sku, default: ''

      t.timestamps
    end
  end
end
