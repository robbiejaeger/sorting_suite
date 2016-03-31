require "minitest/autorun"
require "minitest/pride"
require "bubble_sort"

class BubbleSortTest < Minitest::Test

  def test_class_exists
    sorter = BubbleSort.new
    assert sorter
  end

  def test_empty_array_is_returned_as_sorted
    sorter = BubbleSort.new
    array = []

    sorted = sorter.sort(array)

    assert_equal [], sorted
  end

  def test_array_of_one_is_returned_as_sorted
    sorter = BubbleSort.new
    array = [1]

    sorted = sorter.sort(array)

    assert_equal [1], sorted
  end

  def test_swap
    sorter = BubbleSort.new

    array = [2, 3, 7, 4]

    swapped = sorter.swap(array, 0, 3)

    assert_equal [4, 3, 7, 2], swapped
  end
end
