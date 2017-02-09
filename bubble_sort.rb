def bubble_sort(array: )
    array = array.dup
    i = 0
    while i < array.length - 1
        if array[i] > array[i+1]
            tmp = array[i+1]
            array[i] = array[i+1]
            array[i] = tmp
        end
        i += 1
    end
    return array
end

p bubble_sort(array: [1,3,5,7,23,21,6,78,23])