def pet_shop_name(name)
  name[:name]
end

def total_cash(shop)
  shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, cash)
  shop[:admin][:total_cash] += cash
end

def pets_sold(pets)
  pets[:admin][:pets_sold]
end

def increase_pets_sold(pet_sold, sold)
  pet_sold[:admin][:pets_sold] += sold
end

def stock_count(count)
  count[:pets].length
end

def pets_by_breed(shop, breed)
  pets = []
  shop[:pets][:breed].each do |pet|
    pets.push(pet)
  end
  return pets.count(breed)
end

#   # set up an empty array
#   # loop through the array of pets array of the pets hash
#   # check if each pets breed matches the breed passed into the function
#   # if so, push to the empty array
#   # return the array


def find_pet_by_name(shop, name)
  pet = shop[:pets].index(name)
end

def remove_pet_by_name(shop, pet)
  shop[:pets].delete(pet)
end

def add_pet_to_stock(shop, new_pet)
  count = shop[:pets].push(new_pet)
end

def customer_cash(customer_cash)
  customer_cash[:cash]
end

def remove_customer_cash(customer, cash)
  customer[:cash] -= cash
end

def customer_pet_count(count)
  count[:pets].length
end

def add_pet_to_customer(customer, pet)
  customer[:pets].push(pet)
end

### Optional

def customer_can_afford_pet(customer, can_buy_pet)
  if customer[:cash] >= can_buy_pet[:price]
    return true
  else
    return false
  end
end
#
# def sell_pet_to_customer(shop, pet, customer)
#
#
#
# end
