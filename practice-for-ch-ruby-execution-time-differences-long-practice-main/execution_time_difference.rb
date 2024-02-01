#phase1 - nested loop
def my_min1(arr)
    i = 0
    while i < arr.length
        m = 0
        while m < arr.length
            current_number = arr[0]
            if arr[m] < current_number
                current_number = arr[m]
            end
            m += 1
        end
        i+= 1
    end
    current_number
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