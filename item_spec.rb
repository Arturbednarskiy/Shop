require 'rspec'
require_relative 'item'
require_relative 'virtual_item'

describe Item do
  it 'calculates correctly price' do
    item = Item.new( name: 'car', price: 300 )
    expect(item.price).to be nil
  end
end