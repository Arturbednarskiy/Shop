require_relative 'item_container'
# Missing frozen string literal comment.
class Order
  attr_reader :items

  include ItemContainer

  def initialize
    @items = []
  end

  def place
    # thread = Thread.new do
    #   Pony.mail(
    #     to: StoreApplication::Admin.email,
    #     from: 'My store <mail@gmail.com>',
    #     via: :smtp,
    #     via_options: {
    #       address:         'smtp.gmail.com',
    #       port:            587,
    #       enable_starttls_auto: true,
    #       #openssl_verify_mode: OpenSSL::SSL::VERIFY_NONE,
    #       user_name:       StoreApplication::Admin.email,
    #       password:        StoreApplication::Admin.pass,
    #       authentication:  :plain,
    #       domain:      'gmail.com',
    #     },
    #     subject: 'New order',
    #     body: 'Check your order'
    #   )
    # end
    
    # while thread.alive?
    #   puts '...'
    #   sleep 1
    # end
  end
end