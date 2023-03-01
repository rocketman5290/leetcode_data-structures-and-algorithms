# TWO POINTERS 
# Time complexity: 0(n)
# Space complexity: 0(1)
# The strength of this technique is that we will never have more than 0(n) iterations for the while loop; therefore, if we can keep the work inside each iteration at 0(1) , this technique will result in a linear runtime.

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