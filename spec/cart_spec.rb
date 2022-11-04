require 'rspec'
require_relative '../cart'
require_relative '../item_container'
require_relative '../virtual_item'
require_relative '../real_item'
require_relative '../antique_item'

describe Cart do
  it 'adds items to cart' do
    cart =  Cart.new(owner: 'dasha')
    item1 = Item.new(name: 'car', price: 300)
    item2 = Item.new(name: 'bike', price: 400)

    cart.add_item(item1, item2)
    expect(cart.items).to include(item1, item2)
  end
end