require 'pry'

def consolidate_cart(cart)
 cons_cart = {}
  cart.each do |item|
 #  binding.pry 
    if cons_cart[item.keys[0]]
      cons_cart[item.keys[0]][:count] += 1
    else
      cons_cart[item.keys[0]] = {
        price: item.values[0][:price],
        clearance: item.values[0][:clearance],
        count: 1
      }
    end
  end
  cons_cart
end

def apply_coupons(cart, coupons)
  coupons.each do |x| #iterate through each coupon 
    y = x.values[0] #assign y to the coupon's :item
    if cart.include?(y) # find out if the cart's keys include that coupon's :item
      if cart[y][:count] >= x[:num] # checking if we have enough units to apply the coupon to
        cart["#{y.upcase} W/COUPON"] = {}  # create empty hash, then build into it
        cart["#{y.upcase} W/COUPON"][:price] = x[:cost] / x[:num]
        cart["#{y.upcase} W/COUPON"][:clearance] = cart[y][:clearance]
        cart["#{y.upcase} W/COUPON"][:count] = x[:num]
        cart[y][:count] -= x[:num] # update the original cart with the units from the coupon deducted from it
      else
        cart[y] # if number of units in cart is not enough to apply voucher to, just return the original cart line
      end 
    else 
      cart
    end
  end 
  cart
end

def apply_clearance(cart)
  cart.each do |z| 
    if z[1][:clearance]
    #apply clearance
       clearance_price = z[1][:price] * 0.8
       z[1][:price] = clearance_price.round(2)
    else
    # do we need an else?
    end
  end
  cart
end

def checkout(cart, coupons)
  # consolidates the cart
  consolidated_cart = consolidate_cart(cart)
  # applies the coupons
  couponed_cart = apply_coupons(consolidated_cart, coupons)
  # applies the discounts
  discounted_cart = apply_coupons(couponed_cart)
     binding.pry
  # adds up the cost of entire cart
  
  # returns the subtotal
  # if subtotal is over $100, apply additional 10% off, else subtotal
end

 cart =  [
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"AVOCADO" => {:price => 3.00, :clearance => true }},
  {"KALE"    => {:price => 3.00, :clearance => false}}
]
coupons = [
  {:item => "AVOCADO", :num => 2, :cost => 5.00},
  {:item => "BEER", :num => 2, :cost => 20.00},
  {:item => "CHEESE", :num => 3, :cost => 15.00}
]

checkout(cart, coupons)

