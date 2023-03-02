# @param {Integer[]} nums
# @return {Integer[]}

# 0(n log) square each int and then sort...
# ....BETTER TO use two pointers via 0(n)...
# 0(n) using two pointers and reverse array fill via decrementing while loop.
# Initialize left=0 and right=n-1
# if abs(left) >= abs(right) then store square(arr[left])
# at the end of result array and increment left pointer
# else store square(arr[right]) in the result array and decrement right pointer
# decrement index of result array
# lastly, return sorted array.

def sorted_squares(nums)
    n = nums.length
    result = Array.new(n)
    left = 0
    right = n - 1

    i = n - 1
    while i >= 0
        square = nil
        
        if nums[left].abs < nums[right].abs
            square = nums[right]
            right-=1
        else
            square = nums[left]
            left += 1
        end
            result[i] = square**2
            i -= 1
    end
    
    result
end

test_case_1 = [-45,-2,-1,0,5,8,9]

p sorted_squares(test_case_1)