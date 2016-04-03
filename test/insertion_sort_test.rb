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
    array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15].shuffle

    sorted = sorter.sort(array)

    assert_equal (1..15).to_a, sorted
  end

  def test_can_sort_array_with_empty_and_nil_element
    sorter = InsertionSort.new
    array = ["d", nil, "a", "c", "", "b"].shuffle

    sorted = sorter.sort(array)

    assert_equal ["a", "b", "c", "d"], sorted
  end

  def test_can_sort_reversed_array
    sorter = InsertionSort.new
    array = [5, 4, 3, 2, 1]

    sorted = sorter.sort(array)

    assert_equal [1, 2, 3, 4, 5], sorted
  end

end
