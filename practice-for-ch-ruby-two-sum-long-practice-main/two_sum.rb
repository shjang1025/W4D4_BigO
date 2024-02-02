def bad_two_sum?(arr, target_sum)
    res = []
    arr.each_with_index do |n1,i1|
        arr.each_with_index do |n2, i2|
            if i1 < i2 && i1 != i2
                res << [n1,n2]
            end
        end
    end
    res.each do |subarr|
        return true if subarr.sum == target_sum
    end
    false
end
