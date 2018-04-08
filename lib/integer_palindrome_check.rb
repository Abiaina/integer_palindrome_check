require 'pry'

def is_palindrome(number)
  if number == nil || number < 0
    return false
  elsif (0..9).cover?(number)
    return true
  end

  range_by_ten = 10
  even_odd_count = 0

  while (number / range_by_ten) > 0
    range_by_ten = (10 * range_by_ten)
    even_odd_count += 1
  end

  left_reflection = (range_by_ten / 10)
  right_reflection = 10

  until left_reflection == right_reflection
    if !((number / left_reflection) == (number % right_reflection))
      return false
    else
      left_reflection = (left_reflection / 10)
      right_reflection = (right_reflection * 10)
    end
binding.pry
    if ((left_reflection / right_reflection) == 100)
      if odd_check(number) && ((number / left_reflection) == (number % right_reflection))
        return true
      end
    end
  end

  return true
end

def odd_check(number)
  number = number % 10

  is_odd = false

  if number == 1 || number == 3 || number == 5 || number == 7 || number == 9
    is_odd = true
  end

  return is_odd
end

is_palindrome(34143)
