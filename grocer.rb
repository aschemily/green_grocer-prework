def consolidate_cart(cart:[])
  # code here	  new_hash = {}
  cart.each do |item|
    item.each do |food, item|
      item[:count] ||= 0
      item[:count] += 1
      new_hash[food] = item
    end
  end
    new_hash
end	end