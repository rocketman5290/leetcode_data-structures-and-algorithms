# TWO POINTER: TWO SUM
# @param nums: [int].sorted(a - b)
# @param target: int

def check_for_target(nums, target)
    left = 0
    right = nums.length - 1

    while left < right do
        curr = nums[left] + nums[right]

        if curr == target
            return true
        end

        if curr > target
            right -= 1
        else
            left += 1
        end

    end
    false
end

p 'Return true if target number is found by adding any of the different indices together, if not possible return false. List must be sorted for this to work properly.'
p check_for_target([1,2,3,4,5,6], 7) 
p check_for_target([1,2,3,4,5,6], 54)
p check_for_target([1,2,3,4,5], 5)
p check_for_target([1,2,3,4,5,6,15], 21)
p check_for_target([1,2,3,4,5,6,15], 2)
p check_for_target([1,2,3], 3)