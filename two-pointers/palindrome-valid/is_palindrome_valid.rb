def is_palindrome_valid(s)
  left = 0
  right = s.length - 1

  while left < right
    # Skip non-alphanumeric characters from the left.
    while left < right && !s[left].match?(/[[:alnum:]]/)
      left += 1
    end

    # Skip non-alphanumeric characters from the right.
    while left < right && !s[right].match?(/[[:alnum:]]/)
      right -= 1
    end

    # Compare characters ignoring case.
    return false unless s[left].casecmp?(s[right])

    left += 1
    right -= 1
  end

  true
end

s = "hello, world!"

p is_palindrome_valid(s)

# Time Complexity: the time complexity of is_palindrome_valid is O(n)
# Space Complexity: O(1) because we allocated a constant number of variables