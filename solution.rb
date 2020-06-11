#move_zeroes:
def move_zeroes(arr)
  num_arr = arr.select { |num| num != 0}
  zero_arr = arr.select { |num| num == 0}
  num_arr.concat(zero_arr)
end

#Test move_zeroes:
test_arr = [0, 1, 0, 3, 12]
puts "Running Move Zeroes... \n Original Array: #{test_arr} \n Sorted Array: #{move_zeroes(test_arr)}"

#two_sum:
def two_sum(num_arr, target)
  num_arr.each_with_object({}).with_index { | (num1,outhash), index1|
    num_arr.each.with_index { |num2, index2|
      if index1 < index2 && num1 + num2 == target
        outhash[:index1] = index1
        outhash[:index2] = index2
      end
    }
  }
end

#Test two_sum:
test_arr2 = [2, 7, 11, 15]
test_target = 9
puts "Running Two Sum... \n Original Array: #{test_arr2} \n Target: #{test_target} \n Indexes: #{two_sum(test_arr2, test_target)}"
