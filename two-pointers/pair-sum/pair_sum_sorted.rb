def pair_sum_sorted(arr, target)
  left = 0
  right = arr.length - 1

  while left < right
    sum = arr[left] + arr[right]
    # If the sum is smaller, increment the left pointer, aiming
    # to increase the sum toward the target value
    if sum < target
      left += 1
    # If the sum is larger, decrement the right pointer, aiming
    # to decrease the sum toward the target value
    elsif sum > target
      right -= 1
    # If the target pair is found, return its indexes
    else
      return [left, right]
    end
  end
  []
end

arr = [3,3]

p pair_sum_sorted(arr, 6)

# Time Complexity - the time complexity here is O(n) because we perform approximately
# n iterations using the two pointer technique in the worst case
#
# Space Complexity - We only allocated a constant number of variables, so the space complexity is O(1)