class BaseCart
  attr_reader :items

  @@total_items_in_all_carts = 0

  def initialize
    @items = []
    @total_price = 0
  end

  def self.total_items_in_all_carts
    @@total_items_in_all_carts
  end

  private

  def self.increment_total_items(count)
    @@total_items_in_all_carts += count
  end
end