=begin
  Given an array of integers sorted in ascending order and  a target value,
  return the indexes of any pair of numbers in the array that sum to the target.
  The order of the indexes in the result does not matter.
  If no pair is found, return an empty array.
=end

def pair_sum(arr, target)
  n = arr.length

  (0...n).each do |i|
    ((i+1)...n).each do |j|
      if arr[i] + arr[j] == target
        return [i, j]
      end
    end
  end
  []
end

arr = [-5, -2, 3, 4, 6]

p pair_sum(arr, 7)

# Has a time complexity of O(n*2)