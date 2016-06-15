# When done, submit this entire file to the autograder.

# Part 1
require "pry"

def sum (arr)
  # YOUR CODE HERE
  sum = 0
  arr.each do |add|
  	sum = sum + add
  end
  return sum
end

def max_2_sum (arr)
  # YOUR CODE HERE
  empty = 0
  arr = arr.sort
  if arr == []
  	return empty
  elsif arr.length == 1
  	return arr[0]
  else
	  max_sum = (arr[-1]) + (arr[-2])
	  return max_sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
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

