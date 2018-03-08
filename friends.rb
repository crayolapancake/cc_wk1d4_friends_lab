def get_name(person)
  return person[:name]
end

def get_show(person)
  return person[:favourites][:tv_show]
end

def find_if_they_like_food(person, food)
  fav_food = person[:favourites][:things_to_eat]
  for item in fav_food
    if item = food
      return true
    end
  end
  return false
end

def add_a_friend(person, friend)
  person[:friends].push("Bob")
  return person[:friends].length
end

def delete_a_friend (person, friend)
  person[:friends].delete("Rick")
  return person[:friends].length
end

def find_total_money(persons)
  total = 0
  for person in persons
    total += person[:monies]
  end
  return total
end

def money_lender (lender, receiver, amount)

  lender[:monies] -= amount
  receiver[:monies] += amount
  return nil
end

def all_favourite_foods

for each person find fav foods as array
  put arrays together as one array [:favourites][:things_to_eat]
  print

end
