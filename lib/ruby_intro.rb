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
  return 'Hello, ' + name
end

def starts_with_consonant? s
  if s.empty? == true
    return false
  end
  if s[0].chr.match?(/[A-Za-z]/) == false
    return false
  end
  if s[0].chr != 'a' && s[0].chr != 'e' && s[0].chr != 'i' && s[0].chr != 'o' && s[0].chr != 'u' &&
    s[0].chr != 'A' && s[0].chr != 'E' && s[0].chr != 'I' && s[0].chr != 'O' && s[0].chr != 'U'
    return true
  end
  return false
end

def binary_multiple_of_4? s
  if s.empty? == true
    return false
  end
  if s.match?(/[A-Za-z!@#$%^&*()2-9]/) == true
    return false
  end
  if s[s.length - 1].chr == '0' && s[s.length - 2].chr == '0'
    return true
  end
  return false  
end

# Part 3

class BookInStock
  # constructor
  def initialize(isbn, price)
    raise ArgumentError.new(
      "Expected a valid isbn number."
    ) if isbn.empty? == true
    @isbn = isbn
    raise ArgumentError.new(
      "Expected a positive and non zero price."
    ) if price < 0 || price == 0
    @price = price
  end

  # method
  def price_as_string
    return sprintf('$%.2f', @price)
  end

  # getters
  def isbn
    @isbn
  end
  def price
    @price
  end

  # setters
  def isbn=(isbn)
    @isbn = isbn
  end
  def price=(price)
    @price = price
  end
end
