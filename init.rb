require_relative 'store_application'

StoreApplication.set do |app|
  app.name        = 'Ruby App'
  app.environment = :develoment

  app.admin do |admin|
    admin.email = 'some@mail.com'
    admin.pass  = 'some_password'
    admin.login = 'admin'
  end
end

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