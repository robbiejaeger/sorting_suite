require "minitest/autorun"
require "minitest/pride"
require "insertion_sort"

class InsertionSortTest < Minitest::Test

  def test_class_exists
    sorter = InsertionSort.new
    assert sorter
  end

  def test_empty_array_is_returned_as_sorted
    sorter = InsertionSort.new
    array = []

    sorted = sorter.sort(array)

    assert_equal [], sorted
  end

  def test_array_of_one_is_returned_as_sorted
    sorter = InsertionSort.new
    array = [1]

    sorted = sorter.sort(array)

    assert_equal [1], sorted
  end

  def test_can_sort_small_array
    sorter = InsertionSort.new
    array = ["d", "b", "a", "c"]

    sorted = sorter.sort(array)

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_can_sort_larger_array_of_nums
    sorter = InsertionSort.new
    array = [2, 4, 6, 5, 8, 9, 1, 7, 3]

    sorted = sorter.sort(array)

    assert_equal [1, 2, 3, 4, 5, 6, 7, 8, 9], sorted
  end
end
