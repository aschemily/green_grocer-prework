def consolidate_cart(cart:[])
  # code here	  
 new_cart = {}
  
  cart.each do |food_hash|
    
    food_hash.each do |food_item, info_hash|
      
      if new_cart.include?(food_item)
        new_cart[food_item][:count] += 1
      else
        new_cart[food_item] = {
            :price => info_hash[:price],
            :clearance => info_hash[:clearance],
            :count => 1
        }
      end
    end
  end
  new_cart
end	

def apply_coupons(cart:[], coupons:[])

end	

def apply_clearance(cart:[])
  # code here	  # code here
  # cart_cons = consolidate_cart(cart: cart)
  cart.each do |item, attribute|
    if attribute[:clearance] == true
      attribute[:price] = (attribute[:price]*0.8).round(2)
    end
  end
  return cart
end	

def checkout(cart:[], coupons: [])
  # code here	  # code here
  cart_cons = consolidate_cart(cart: cart)
  cart_coup = apply_coupons(cart:cart_cons, coupons:coupons)
  cart_check = apply_clearance(cart: cart_coup)
  total = 0
  cart_check.each do |item, attribute|
    total += attribute[:count] * attribute[:price]
  end
  return total = total > 100 ? (total*0.9).round(2) : total
end 	