module Discount
  def apply_discount(percentage)
    @total_price -= (@total_price * percentage / 100)
  end
end
