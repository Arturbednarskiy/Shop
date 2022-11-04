require 'rspec'
require_relative '../item'
require_relative '../virtual_item'


describe Item do

  before(:each) do
    @item = Item.new(name: 'car', price: 300)
  end

  it 'calculates correctly price' do
    expect(@item.price).to be nil
  end

  it 'returns correctly info about object' do
    expect(@item.to_s).to include('car')
  end
end