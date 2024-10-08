def bubble_sort(array)
  sort_rounds_pend = array.length
  until sort_rounds_pend == 0
    sort_rounds_pend -= 1
    i = 0
    until i == sort_rounds_pend
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
      end
      i += 1
      # puts "#{array}"
    end
  end
  array
end

bubble_sort([4,3,78,2,0,2])
