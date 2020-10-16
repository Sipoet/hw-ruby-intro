# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sorted = arr.sort{|num_a, num_b| num_b <=> num_a}
  sorted[0..1].sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.length < 2
  sorted_arr = arr.sort
  sorted_arr.each.with_index do |num, index|
    expect_num = n - num
    filter_arr = if expect_num < num
      sorted_arr[0...index]
    else
      sorted_arr[(index + 1)..-1]
    end
    return true if filter_arr.include?(expect_num)
  end
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"

end

def starts_with_consonant? s
  # YOUR CODE HERE
  result = /^[^aiueo\W_].*/i =~ s
  return !result.nil?
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  num = Integer(s, 2)

  num % 4 == 0
rescue
  false
end

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn.to_s
    @price = price.to_f
    raise ArgumentError.new('invalid isbn') if @isbn.length == 0
    raise ArgumentError.new('invalid price') if @price <= 0
  end

  def price_as_string
    "$%0.2f" % @price
  end
end
