=begin
  Given an array of integers return all triplets[a, b, c] such that a + b + c = 0. The solution
  must not contain duplicate triplets(e.g [1, 2, 3] and [2, 3, 1]
  are considered duplicate values). If no such triplets are found,
  return an empty array.

  Each triplet can be arranged in any order, and the output can be returned in any order.
=end

def triplet_sum_brute_force(arr)
  n = arr.length
  result = Set.new

  (0...n).each do |i|
    ((i + 1)...n).each do |j|
      ((j + 1)...n).each do |k|
        if (arr[i] + arr[j] + arr[k]).zero?
          result << [arr[i], arr[j], arr[k]].sort
        end
      end
    end
  end
  result.to_a
end

arr = [0, -1, 2, -3, 1]

p triplet_sum_brute_force(arr)

# Time complexity - the time complexity is O(n*3)