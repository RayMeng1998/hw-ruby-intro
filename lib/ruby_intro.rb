# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  i = 0
  while (i < arr.length)
    sum += arr[i]
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  fl = 0
  sl = 0
  i = 0
  while (i < arr.length)
    if (arr[i] > fl)
      sl = fl
      fl = arr[i]
    elsif (arr[i] > sl)
      sl = arr[i]
    end
  end
  return fl + sl
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
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
