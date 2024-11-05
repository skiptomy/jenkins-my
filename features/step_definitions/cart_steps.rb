require 'rspec'
require_relative '../../lib/cart'
require_relative '../../lib/item'


Given('I have an empty cart') do
  @cart = Cart.new
end

Given('I have a cart with a {string} costing {int}') do |name, price|
  @cart = Cart.new
  @cart.add_item(Item.new(name, price))
end

When('I add an item {string} with price {int}') do |name, price|
  @cart.add_item(Item.new(name, price))
end

When('I apply a discount of {int} percent') do |discount|
  @cart.apply_discount(discount)
end

When('I remove the item {string}') do |name|
  @cart.remove_item(name)
end

Then('the total should be {int}') do |total|
  expect(@cart.total).to eq(total)
end