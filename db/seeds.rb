# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
products = Product.create([
  {name: 'product01', description: 'product01 description', vendor: 'vendor01', price: 3472, currency: 'USD', stock: 23, image_url: 'some_address/pic.png', sku: '783434HJG'},
  {name: 'product02', description: '', vendor: '', price: 522, currency: 'USD', stock: 28, image_url: '', sku: ''},
  {name: 'product03', description: '', vendor: '', price: 997, currency: 'EUR', stock: 52, image_url: '', sku: ''},
  {name: 'product04', description: '', vendor: '', price: 243, currency: 'EUR', stock: 7, image_url: '', sku: ''},
  {name: 'product05', description: '', vendor: '', price: 235, currency: 'USD', stock: 0, image_url: '', sku: ''}
])
