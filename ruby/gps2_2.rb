# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # 1. split string into different words
  # 2. put all strings into a hash
  # 3. set default quantity 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash of grocery list
def grocery_list(item_string)
  item_array = item_string.split(" ")
  grocery_hash = {}
  item_array.each {|item_name| grocery_hash [item_name] = 1}
  puts grocery_hash
  return grocery_hash
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: key item_name
# output: value 1
def add_item(list, item_name, optional_quantity = 1)
  list[item_name] = optional_quantity
end

# Method to remove an item from the list
# input: list
# steps: to the delete item from the list
# output: item_name
def remove_item(list, item_name)
  list.delete(item_name)
end

# Method to update the quantity of an item
# input: list
# steps: add quantity to an item
# output: quantity
def update_quantities(list, item_name, quantity)
  list[item_name] = quantity
end

# Method to print a list and make it look pretty
# input: list
# steps: loop throught the list and print each value
# output: value
  def list_value(list)
    list.each{|key, value| puts "#{key} #{value}"}
  end

#drivercode

# grocery = grocery_list ("carrots apples cereal pizza")
# add_item(grocery, "kiwi", 2)
# p grocery
# remove_item(grocery, "carrots")
# p grocery
# update_quantities(grocery, "cereal", 3)
# p grocery
# list_value(grocery)
# p grocery

grocery = grocery_list ("tomatoes icecream onions lemonade")
update_quantities(grocery, "lemonade", 2)
update_quantities(grocery, "tomatoes", 3)
update_quantities(grocery, "onions", 1)
update_quantities(grocery, "cereal", 3)
update_quantities(grocery, "icecream", 4)
remove_item(grocery, "lemonade")
add_item(grocery, "icecream", 1)
list_value(grocery)
p grocery