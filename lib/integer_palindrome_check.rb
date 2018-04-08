def is_palindrome(number)
  if number == nil
    return false
  elsif (0..9).cover?(number)
    return true
  end

  range_by_ten = 10

  while (number / range_by_ten) > 0
    range_by_ten = (10 * range_by_ten)
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
  end

  return true
end
