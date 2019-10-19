def pet_shop_name (hash)
 return hash[:name]
end


def total_cash(hash)
  return hash[:admin][:total_cash]
end

def add_or_remove_cash (hash, amount)
  return hash[:admin][:total_cash] += amount
end

def pets_sold(pet_shop_hash)
  return pet_shop_hash[:admin][:pets_sold]
end

def increase_pets_sold (hash, amount)
  return hash[:admin][:pets_sold] += amount
end

def stock_count(hash)
  return hash[:pets].length
end

def pets_by_breed(hash, breed)
  breed_1 = []
  for animal in hash[:pets]
    if breed == animal[:breed]
      breed_1.push(animal)
    end
  end
 return breed_1
end


def find_pet_by_name(pet_shop_hash, pet_name)

  for animal in pet_shop_hash[:pets]
    if pet_name == animal[:name]
      return animal
    end
  end
  return nil
end

def remove_pet_by_name(hash, pet_name)

  for animal in hash[:pets]
    index =  hash[:pets].index(animal)
    if pet_name == animal[:name]
      hash[:pets].delete_at(index)
    end
  end

end

def add_pet_to_stock(petshop_array, new_pet_array)
  petshop_array[:pets].push(new_pet_array)
end

def customer_cash(customers_array_i)
  return customers_array_i[:cash]
end

def remove_customer_cash (customers_array_i, amount)
   return customers_array_i[:cash] -= amount
end

def customer_pet_count (customers_array_i)
  return customers_array_i[:pets].count
end

def add_pet_to_customer (customers_array_i, new_pet_array )
   customers_array_i[:pets].push(new_pet_array)
end

# --- OPTIONAL ---

def customer_can_afford_pet (customers_array_i, new_pet_array)
  if customers_array_i[:cash] >= new_pet_array[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer (pet_shop_hash, pet_name, customers_array_i)

  if pet_name != nil

    for animal in pet_shop_hash[:pets]

      if pet_name[:name] == animal[:name] && customers_array_i[:cash] >= animal[:price]
         customers_array_i[:pets].push(animal[:name])
         pet_shop_hash[:admin][:pets_sold] += 1
         customers_array_i[:cash] -= animal[:price]
         pet_shop_hash[:admin][:total_cash] += animal[:price]
      end
    end
  end
end
