require_relative './my_enumerable'

class MyList
  include my_enumerable
  def initialize(*list)
    puts list
    @list = list
  end

  def each
    @list.each { |x| yield x }
  end
end
