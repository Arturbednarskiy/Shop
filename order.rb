require_relative 'item_container'
# Missing frozen string literal comment.
class Order
  attr_reader :items

  include ItemContainer

  def initialize
    @items = []
  end

  def place
    Pony.mail(
      to: StoreApplication::Admin.email,
      via: :smtp,
      via_options: {
        address:         'smtp.yourserver.com',
        port:            587,
        enable_starttls_auto: true,
        #openssl_verify_mode: OpenSSL::SSL::VERIFY_NONE,
        user_name:       StoreApplication::Admin.email,
        password:        StoreApplication::Admin.pass,
        authentication:  :plain,
        domain:      'gmail.com',
      },
      subject: 'New order',
      body: 'Check your order'
    )
  end
end