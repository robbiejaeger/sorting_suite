class BubbleSort

  def sort(array)
    if array.length > 1
      swapped = false
      while swapped == false
        array.each_index do |index|
          #
        end
      end
    end
    array
  end

  # private

  def swap(array, swap_right, swap_left)
      array[swap_right], array[swap_left] = array[swap_left], array[swap_right]
      array
  end

end
