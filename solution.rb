def move_zeroes(nums)
  for i in (0..nums.length)
    if nums[i] == 0
      nums << nums.slice!(i, 1).first
    end
  end
  nums
end
  


def two_sum(numbers, target)
  for i in (0..numbers.length)
    for j in (i + 1)..numbers.length - 1)
      if numbers[i] + numbers[j] == target
        p "{index1: #{i}, index2: #{j}}"
      end
    end
  end
end