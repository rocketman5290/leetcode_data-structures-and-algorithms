def reverse_string(s)
    i = 0
    j = s.length - 1

    while i < j
        s[i], s[j] = s[j], s[i]
        i += 1
        j -= 1
    end
    s #only in this example. on leetcode, solution should only change string in place and not return anything.
end

p reverse_string("abc")
p reverse_string("1234")
p reverse_string("jklmnop")