def bubble_sort(array)
    did_swap = true
    while did_swap == true
        did_swap = false
        for i in 0...(array.length - 1)
            if array[i + 1] < array[i]
                array[i], array[i + 1] = array[i + 1], array[i]
                did_swap = true
            end
        end
    end
    return array 
end

p bubble_sort([4,3,78,2,0,2])