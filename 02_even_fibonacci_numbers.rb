module Fib

  # return [1,2,3,5,8,13,21,34...limit]
  def get_fib_numbers(limit)
    @@limit = limit
    fib
  end

  # return [2,8,34...]
  def get_sum_of_even(limit)
    sum_of_even get_fib_numbers(limit)
  end

  # push numbers to arr, and return that
  def fib(arr=[1,2])
    next_term = arr[-1] + arr[-2]
    return arr if next_term >= @@limit
    arr << next_term
    fib(arr)
  end

  # get the sum of even terms from an array of fib numbers
  def sum_of_even(arr)
    sum = 0
    arr.each do |i|
      sum += i if i.even?
      return sum if i == arr.last
    end
  end
end

# include Fib
# p Fib.get_sum_of_even(4000000)
