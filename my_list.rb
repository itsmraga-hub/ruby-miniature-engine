require_relative './my_enumerable'

# Mylist Class
class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    i = 0
    while @list[i]
      yield @list[i]
      i += 1
    end
  end
end

# Create our list
list = MyList.new(1, 2, 3, 4) # => <MyList:0x0000025b31dc7010 @list=[1, 2, 3, 4]>

# Test #all?
list.all? { |e| e < 5 } # => true
list.all? { |e| e > 5 } # => false

# Test #any?
list.any? { |e| e == 2 } # => true
list.any? { |e| e == 5 } # => false

# Test #filter
list.filter(&:even?) # => [2, 4]
