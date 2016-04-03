class MergeSort

  def sort(array)
    array = clean_array(array)
    return array if array.size < 2

    # Split arrays recursively
    middle_of_array = (array.count/2).ceil
    left_array = sort(array[0..middle_of_array - 1])
    right_array = sort(array[middle_of_array..array.count])
    # Merge array recursively
    merge_arrays(left_array, right_array)
  end


  private

  def clean_array(array)
    array.reject {|i| i.to_s.empty?}
  end

  def merge_arrays(left_array, right_array)
    if left_array == []
      right_array
    elsif right_array == []
      left_array
    elsif left_array[0] < right_array[0]
      [left_array[0]] + merge_arrays(left_array[1..left_array.count], right_array)
    elsif left_array[0] > right_array[0]
      [right_array[0]] + merge_arrays(left_array, right_array[1..right_array.count])
    end
  end

end
