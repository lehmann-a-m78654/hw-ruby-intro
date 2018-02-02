# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum = 0
  arr.each{|x| sum = sum + x}
  sum
end

def max_2_sum arr
  sum = 0
  arr.sort!
  maxes = arr.last(2)
  maxes.each {|x| sum = sum + x}
  sum
end

def sum_to_n? arr, n
  arr.each_with_index {|x, i|
    arr.drop(i + 1).each { |y|
      if (x + y) == n
        return true
      end
    }
  }
  return false
end


# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  if /\A[a-z&&[^aeiou]]/i.match(s)
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  s_str = s.to_s
  s_str = "00" + s_str;
  if /(\A[01]*0{2,}\Z)|(\A0+\Z)/.match(s.to_s)
    return true
  else
    return false
  end
end


# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize is, pr 
    if is.to_s.length == 0
      raise ArgumentError.new("isbn cannot be an empty string")
    elsif pr.to_f <= 0
      raise ArgumentError.new("price cannot be less than 0")
    end
    @isbn = is
    @price = pr.to_f
  end
  def price_as_string
    "$" + "%0.2f" % price
  end
  
end
