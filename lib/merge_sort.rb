class MergeSort

  def sort(array)
    array = clean_array(array)
    return array if array.size < 2

    # Split array recursively
    middle_of_array = (array.count/2).ceil
    left_array = sort(array[0..middle_of_array - 1])
    right_array = sort(array[middle_of_array..array.count])
    # Merge arrays
    merge_arrays(left_array, right_array)
  end


  private

  def clean_array(array)
    array.reject {|i| i.to_s.empty?}
  end


  def merge_arrays(left_array, right_array)
  sorted_array = []
    while left_array.count > 0 && right_array.count > 0
      push_elements(sorted_array, left_array, right_array)
    end
  sorted_array + left_array+ right_array
  end


  def push_elements(sorted_array, left_array, right_array)
    if left_array.first < right_array.first
      sorted_array << left_array.shift
    else
      sorted_array << right_array.shift
    end
  end

end
