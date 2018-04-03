# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
def is_palindrome(number)
  if number == nil
    return false
  end

  palindrome = false

  # this should be multiples of 10.
  x = 1

  while number % x != 0
    if number % x == number / x
      palindrome == true
    end
    x *= 10
  end
  return palindrome
end
