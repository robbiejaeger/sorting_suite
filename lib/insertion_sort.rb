class InsertionSort

  def sort(array)
    array = clean_array(array)
    return array if array.size < 2

    sorted_array = [array[0]]
    array.delete_at(0)

    array.each_index do |index|
      sorted_array_index = 0
      while sorted_array_index < sorted_array.count
        if array[index] <= sorted_array[sorted_array_index]
          sorted_array.insert(sorted_array_index, array[index])
          break
        elsif sorted_array_index == sorted_array.count - 1
          sorted_array.insert(sorted_array_index + 1, array[index])
          break
        end
        sorted_array_index += 1
      end
    end
    sorted_array
  end


  private

  def clean_array(array)
    array.reject {|i| i.to_s.empty?}
  end


end
