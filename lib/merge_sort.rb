class MergeSort

  def sort(array)
    array = clean_array(array)
    return array if array.size < 2

    

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
