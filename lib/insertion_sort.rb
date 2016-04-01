class InsertionSort

  def sort(array)
    array = clean_array(array)
    return array if array.size < 2
    sorted_array = [array[0]]
    array.delete_at(0)

    array.each do |num|
      sorted_array.each do |s_num|
        if num < s_num
          
        else

        end
      end
    end
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
