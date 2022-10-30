require_relative 'item_container'
# Missing frozen string literal comment.
class Order
  attr_reader :items

  include ItemContainer

  def initialize
    @items = []
  end

  def notification
    # send message to user
  end
end