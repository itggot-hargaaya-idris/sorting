require 'benchmark'

def insertion_sort_3(array: )
    i = 1
    for i in 0 ... array.size
        j = i
        while j > 0 and array[j-1] > array[j]
            array[j-1], array[j] = array[j], array[j-1]
            j = j - 1
        end
    end
    return array
end

random_list = []
10000.times do |_|
	random_list << rand(1..1000000)
end

Benchmark.bm(20) do |x|
	x.report('insertion_sort') { insertion_sort_3(array: random_list)}

end