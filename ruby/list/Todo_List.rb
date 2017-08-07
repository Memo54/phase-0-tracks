# class TodoList
#   def get_items(x,y)
#   todolist = [x,y]
#   end

# end

# def get_items(x,y)
#   [x,y]
# end
# p get_items("do the dishes", "mow the lawn")

class TodoList
  def initialize(list)
    @list = list
  end
  def get_items
    @list
  end
  def add_item(z)
  @list = @list << z
  end
  def delete_item(w)
  @list.delete(w)
  end
  def get_item(index)
    @list.at(index)
  end
end