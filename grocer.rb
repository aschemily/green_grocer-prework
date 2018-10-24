def consolidate_cart(cart:[])
  # code here	  
  con_hash = {}
  cart.each do |item|
    item.each do |name, attribute|
      if con_hash.has_key?(name)
        con_hash[name][:count] += 1        
      else 
        con_hash = con_hash.merge({name => attribute.merge({count: 1})})
      end
    end
  end
  return con_hash
end	
