def is_palindrome(number)

  if number == nil || number < 0
    return false
  elsif (0..9).cover?(number)
    return true
  end

  range_by_ten = 10

  while (number / range_by_ten) > 0
    range_by_ten = (10 * range_by_ten)
  end

  get_left_side = (range_by_ten / 10)
  get_right_side = 10

  get_first_digit = 1

  until get_left_side < get_right_side

    median_digits = get_left_side / get_right_side

    left_side = (number / get_left_side) % 10
    right_side = (number % get_right_side) / get_first_digit

    if left_side != right_side
      return false
    else
      get_left_side = (get_left_side / 10)
      get_right_side = (get_right_side * 10)
      get_first_digit = get_first_digit * 10
    end
  end

  return true
end

# def odd_check(number)
#   number = number % 10
#
#   is_odd = false
#
#   if number == 1 || number == 3 || number == 5 || number == 7 || number == 9
#     is_odd = true
#   end
#
#   return is_odd
# end

puts is_palindrome(3411143)
