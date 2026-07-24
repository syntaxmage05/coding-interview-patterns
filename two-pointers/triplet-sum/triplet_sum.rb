def triplet_sum(arr)
  results = []
  arr.sort!

  (0...arr.length).each do |i|
    # Since the array is sorted, no triplet can sum to 0 after this point.
    break if arr[i].positive?

    # Skip duplicate starting values.
    next if i.positive? && arr[i] == arr[i - 1]

    pairs = pair_sum_sorted_all_pairs(arr, i + 1, -arr[i])

    pairs.each do |pair|
      results << [arr[i]] + pair
    end
  end

  results
end

def pair_sum_sorted_all_pairs(arr, start, target)
  pairs = []

  left = start
  right = arr.length - 1

  while left < right
    sum = arr[left] + arr[right]

    if sum == target
      pairs << [arr[left], arr[right]]

      left += 1
      right -= 1

      # Skip duplicate left values.
      while left < right && arr[left] == arr[left - 1]
        left += 1
      end

      # Skip duplicate right values.
      while left < right && arr[right] == arr[right + 1]
        right -= 1
      end

    elsif sum < target
      left += 1
    else
      right -= 1
    end
  end

  pairs
end

arr = [0, -1, 2, -3, 1]
p triplet_sum(arr)