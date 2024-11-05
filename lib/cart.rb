require_relative 'discount'
require_relative 'base_cart'

class Cart < BaseCart
  include Discount

  def add_item(item)
    @items << item
    update_total_price(item.price)

    self.class.increment_total_items(1)
  end

  def remove_item(name)
    item = @items.find { |item| item.name == name }
    if item
      @items.delete(item)
      update_total_price(-item.price)

      self.class.increment_total_items(-1)
    end
  end

  def total
    @total_price
  end

  private

  def update_total_price(price_amount)
    @total_price += price_amount
  end
end
