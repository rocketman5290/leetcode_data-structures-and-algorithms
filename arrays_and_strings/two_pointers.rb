# TWO POINTERS 0(n)
# The strength of this technique is that we will never have more than 0(n) iterations for the while loop.
# Therefore, if we can keep the work inside each iteration at 0(1) , this technique will result in a linear runtime.

def palidrome?(array)
    left = 0
    right = array.length - 1

    while left < right do
        if array[left] != array[right]
            return false
        end
 
        left += 1
        right -= 1
    end

    true
end

p palidrome?(["a","b","c","b","a"]) #true
p palidrome?(["a","b","c","b","a"]) #true
p palidrome?(["a","b","c","b","a","d"]) #false
p palidrome?("abccba".split("")) #true
p palidrome?("aaaab".split("")) #false

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
p check_for_target([1,2,3,4,5,6], 7) #true
p check_for_target([1,2,3,4,5,6], 54) #false
p check_for_target([1,2,3,4,5], 5) #true
p check_for_target([1,2,3,4,5,6,15], 21) #true
p check_for_target([1,2,3,4,5,6,15], 2) #false
p check_for_target([1,2,3], 3) #false

# pseudo in python3

# function sorted_combine(arr1, arr2):
#     i = j = 0
#     while i < arr1.length AND j < arr2.length:
#        TODO: do some logic here depending on the problem
#         TODO: do some more logic here to decide on one of the following:
#             1. i++
#             2. j++
#             3. Both i++ and j++

# TODO: make sure both iterables are exhausted
#     while i < arr1.length:
#         TODO: Do some logic here depending on the problem
#         i++

#     while j < arr2.length:
#        TODO: Do some logic here depending on the problem
#         j++


# Ruby version
def sorted_combine(arr1, arr2)
    result = [] # should be sorted upon return
    i = j = 0 # two pointers, one for each array or list
    
    while(i < arr1.length && j < arr2.length)
        if arr1[i] < arr2[j]
            ans.push(arr1[i])
            i += 1
        else
            ans.push(arr2[j])
            j += 1
        end
    end

    while i < arr1.length
        ans.push(arr1[i])
        i += 1
    end

    while j < arr2.length
        ans.push(arr2[j])
        j += 1
    end
   
    result

end

p sorted_combine([1,3,4,9,12], [1,5,8,9])
# use above two pointer pattern to combine two arrays that are sorted into one sorted array which if done properly should be 0(n + m)
# if needs sorting first then 0(n * log n)
