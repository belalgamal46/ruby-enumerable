module MyEnumerable
  def all?
    each { |x| return false unless yield x }
    true
  end

  def any?
    each { |x| return true if yield x }
    false
  end

  def filter
    result = []
    each { |x| result << x if yield x }
    result
  end
end
