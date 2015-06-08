require 'test_helper'

class CartTest < ActiveSupport::TestCase
  def setup
     @cart  = Cart.create
     @clothing_one = products(:coat)
     @clothing_two  = products(:two)
   end
   
  test "add unique products" do
    @cart.add_product(@clothing_one.id).save!
    @cart.add_product(@clothing_two.id).save!
    assert_equal 2, @cart.line_items.size
    assert_equal @clothing_one.price + @clothing_two.price, @cart.total_price
  end
  
  test "add_duplicate_product" do
    @cart.add_product(@clothing_one.id).save!
    @cart.add_product(@clothing_one.id).save!
    assert_equal 2*@clothing_one.price, @cart.total_price
    assert_equal 1, @cart.line_items.size
    assert_equal 2, @cart.line_items[0].quantity
  end 
end
