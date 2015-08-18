# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
class Integer
  def prime?(primes)
    primes.all? { |m| self % m != 0 }
  end
end

def primes_array(n, i=3, arr=[2])
  return arr if arr.last >= n
  arr << i if i.prime?(arr)
  i += 2
  primes_array(n, i, arr)
end

p primes_array(600851475143).last

# 03_largest_prime_factor.rb:5: stack level too deep (SystemStackError)
# うごごごご :(
