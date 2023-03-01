def subsequence?(s, t)
    i = 0
    j = 0
    while( i < s.length && j < t.length) do
        if s[i] == t[j]
            i += 1
        end
        j += 1
    end
    return i == s.length
end

p subsequence?("a", "ab")
p subsequence?("acde", "adc")

# OR

def is_sub(s, t)
    i = 0
    for j in 0...t.size
        if s[i] == t[j]
            i += 1
            return true if i == s.size()
        end
    end
    false
end

p is_sub("a", "ab")
p is_sub("acde", "adc")