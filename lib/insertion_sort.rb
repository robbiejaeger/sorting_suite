class InsertionSort

  def sort(array)
    array = clean_array(array)
    return array if array.size < 2

    sorted = [array.shift]
    array.each_index do |index|
      sorted_index = 0
      push_elements(array, index, sorted, sorted_index)
    end
    sorted
  end


  private

  def clean_array(array)
    array.reject {|i| i.to_s.empty?}
  end

  def push_elements(array, index, sorted, sorted_index)
    while sorted_index < sorted.count
      if array[index] <= sorted[sorted_index]
        sorted.insert(sorted_index, array[index])
        break
      elsif sorted_index == sorted.count - 1
        sorted.insert(sorted_index + 1, array[index])
        break
      end
      sorted_index += 1
    end
  end

end
