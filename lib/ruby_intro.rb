# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  total = 0
  for value in arr do
    total += value
  end
  total
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  end

  if arr.length == 1
    return arr[0]
  end
  sorted_arr = arr.sort
  sorted_arr[-1] + sorted_arr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  for i in 0..arr.length-1
    for j in i+1..arr.length-1
      if arr[i] + arr[j] == n
        return true
      end
    end
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end
  s[0].downcase =~ /[b-df-hj-np-tv-z]/
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s !~ /\A[01]+\z/
    return false
  end
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
