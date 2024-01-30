require 'byebug'
#phase1 - nested loop
def my_min1(arr)
    min = arr.first
    arr.each_with_index do |n1, i1|
        sub_min = n1
        arr.each_with_index do |n2, i2|
            if i1 < i2
                if n1 < n2
                    sub_min = n1
                else
                    sub_min = n2
                end
            end
        end
        if min > sub_min
            min = sub_min
        end
    end 
    min
        
end

#phase 2- single loop
def my_min(arr)
    min = 0
    arr.each do |ele1|
        if min > ele1 
            min = ele1
        end
    end
    min
end


#Largest contiguous sub-sum
def largest_sub_sum(arr)
    sub = []
    arr.each_with_index do |ele1, i1|
        arr.each_with_index do |ele2, i2|
            if i1 == i2
                sub << [ele1]
            elsif i2 > i1
                sub << arr[i1..i2]
            end
        end
    end
    max = sub[0].sum
    sub.each do |sub_arr|
        if sub_arr.sum > max
            max = sub_arr.sum
        end
    end
    max
end

def largest_sub_sum2(arr)
  largest = -100
  current = 0
  arr.each do |ele|
    current += ele
    largest = current if current > largest
    current = 0 if current < 0

    
  end
  largest
end



