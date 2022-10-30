# Dir['*.rb'].each { |file| require_relative file }

require_relative 'item'
require_relative 'cart'
require_relative 'order'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'
require_relative 'string'
require_relative 'antique_item'
require 'active_support/all'


@items = []

@items << VirtualItem.new(name: 'virt', price: 111, weight: 222)
@items << AntiqueItem.new(name: 'ant', price: 331, weight: 441)
@items << RealItem.new(name: 'car', price: 333, weight: 444)
@items << RealItem.new(name: 'bike', price: 555, weight: 666)

cart = Cart.new('amg')
cart.add_item(RealItem.new({ price: 555, weight: 666, name: 'car' }))
cart.add_item(RealItem.new({ price: 555, weight: 666, name: 'car' }))
cart.add_item(RealItem.new({ price: 555, weight: 666, name: 'bike' }))

p cart.send :all_cars