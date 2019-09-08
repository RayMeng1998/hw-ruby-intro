# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  i = 0
  while (i < arr.length)
    sum += arr[i]
    i += 1
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if (arr.length == 0)
    return 0
  elsif (arr.length == 1)
    return arr[0]
  else
    arr = arr.sort
    return arr[arr.length - 1] + arr[arr.length - 2]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr = arr.sort
  left = 0
  right = arr.length - 1
  while (left < right)
    if (arr[left] + arr[right] == n)
      return true
    elsif (arr[left] + arr[right] < n)
      left += 1
    else
      right -= 1
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return 'Hello, ' + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s.length == 0)
    return false
  elsif (!(s[0] >= 'A' && s[0] <= 'Z') && !(s[0] >= 'a' && s[0] <= 'z'))
    return false
  end
  a = s[0] =~ /[aeiouAEIOU]/
  return a == nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  f = s.delete('01')
  if (f == '')
    if (s.length == 0)
      return false
    elsif (s.length == 1)
      return s[0] == '0'
    else
      return s[s.length - 1] == '0' && s[s.length - 2] == '0'
    end
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if (isbn != '' && price > 0.0)
      @isbn = isbn
      @price = price
    else
      raise ArgumentError
    end
  end

  def isbn=(isbn)
    if (isbn != '')
      @isbn = isbn
    else
      raise ArgumentError
    end
  end

  def isbn()
    return @isbn
  end

  def price=(price)
    if (price > 0.0)
      @price = price
      return
    else
      raise ArgumentError
    end
  end

  def price()
    return @price
  end
  def price_as_string()
    "$" + '%.2f' % @price
  end
# YOUR CODE HERE

end
