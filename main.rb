require_relative './MyEnumerable'

class MyList
  include MyEnumerable
  def initialize(*list)
    puts list
    @list = list
  end

  def each
    @list.each { |x| yield x }
  end
end


list = MyList.new(1, 2, 3, 4)


list.all? {|e| e < 5}

list.all? {|e| e > 5}

list.any? {|e| e == 2}

list.any? {|e| e == 5}

list.filter {|e| e.even?}
