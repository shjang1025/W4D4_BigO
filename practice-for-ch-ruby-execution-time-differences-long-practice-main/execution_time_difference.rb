require 'byebug'
#phase1 - nested loop
def my_min1(arr)
  min = 0
  arr.each_with_index do |n1, i1|
    sub_min = 0
    arr.each_with_index do |n2, i2|
      if i1 < i2
        if n1 < n2 
          sub_min = n1
        else
          sub_min = n2
        end
      end 
    
    end
    min = sub_min if sub_min < min
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

list = [ 0, 3, 5, 4, -1, -5, 10, 1, 90 ]