# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum
end

def max_2_sum arr
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr[0]
  end
  first = arr.max(2)
  return first[0] + first[1]
end

def sum_to_n? arr, n
  if arr.length == 1 || arr.length == 0
    return false
  end
  for i in arr
    for j in arr
      if i != j && (i + j) == n
        return true
      end
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
