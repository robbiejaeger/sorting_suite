class BubbleSort

  def sort(array)
    return array if array.size < 2
    swaps = true
    while swaps
      swaps = false
      0.upto(array.size - 2) do |index|
        if array[index] > array[index + 1]
          swap(array, index, (index + 1))
          swaps = true
        end
      end
    end
    array
  end

  private

  def swap(array, swap_right, swap_left)
      array[swap_right], array[swap_left] = array[swap_left], array[swap_right]
      array
  end

end
