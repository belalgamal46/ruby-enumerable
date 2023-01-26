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
