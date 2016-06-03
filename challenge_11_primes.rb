require 'minitest/autorun'
require 'minitest/pride'

# Write a method that passes the tests below. Name your method primes that
# accepts a number of prime numbers to return. ie: primes(2) returns [2, 3]

# WRITE YOUR CODE HERE.


## LEAVE CODE BELOW INTACT

class PrimesChallenge < MiniTest::Test
  def test_one_prime
    assert_equal [2], primes(1)
  end

  def test_two_primes
    assert_equal [2, 3], primes(2)
  end

  def test_ten_primes
    assert_equal [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], primes(10)
  end

  def test_thousand_primes
    first_thousand = primes(1000)
    assert first_thousand.include?(6991)
    assert first_thousand.include?(7907)
    refute first_thousand.include?(1000)
  end

  def test_no_primes
    assert_equal [], primes(0)
  end

  def test_bad_input
    assert_equal [], primes(-34)
  end
end
