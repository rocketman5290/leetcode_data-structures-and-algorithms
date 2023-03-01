# Ruby version
def sorted_combine(arr1, arr2)
    result = [] # should be sorted upon return
    i = j = 0 # two pointers, one for each array or list
    
    while(i < arr1.length && j < arr2.length)
        if arr1[i] < arr2[j]
            result.push(arr1[i])
            i += 1
        else
            result.push(arr2[j])
            j += 1
        end
    end

    while i < arr1.length
        result.push(arr1[i])
        i += 1
    end

    while j < arr2.length
        result.push(arr2[j])
        j += 1
    end
   
    result

end

p sorted_combine([1,3,4,9,12], [1,5,8,9])
# use above two pointer pattern to combine two arrays that are sorted into one sorted array which if done properly should be 0(n + m)
# if needs sorting first then 0(n * log n)
