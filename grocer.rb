def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  counter = 0 
  while counter < collection.length do 
    if collection[counter][:item] == name 
      return collection[counter]
  end
    counter += 1 
  end 
end

def consolidate_cart(cart)
  
  final_array = []
  counter = 0 
  while counter < cart.length do 
    new_item = find_item_by_name_in_collection(cart[counter][:item], final_array)
    if new_item
      new_item[:count] += 1 
    else
      new_item = {
        item: cart[counter][:item], 
        price: cart[counter][:price],
        clearance: cart[counter][:clearance],
        count: 1 
      }
      final_array << new_item
    end 
    counter += 1 
  end 
    final_array
  end 


def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  counter = 0 
  while counter < coupon.length do
    cart_item = find_item_by_name_in_collection(coupon[counter][:item], cart)
    coupon_item_name = "#{coupons[counter][:item]} W/COUPON"
    
    counter += 1 
end 
cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |product_name, stats|
    stats[:price] -= stats[:price] * 0.2 if stats[:clearance]
  end 
  cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
