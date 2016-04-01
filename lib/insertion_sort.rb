class InsertionSort

  def sort(array)
    array = clean_array(array)
    return array if array.size < 2
    sorted_array = []

    
  end


  private

  def clean_array(array)
    array.reject {|i| i.to_s.empty?}
  end

  def swap(array, swap_right, swap_left)
      array[swap_right], array[swap_left] = array[swap_left], array[swap_right]
      array
  end

end
