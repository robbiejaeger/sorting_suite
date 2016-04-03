require "minitest/autorun"
require "minitest/pride"
require "merge_sort"

class MergeSort
  public :merge_arrays
end

class MergeSortTest < Minitest::Test

  def test_class_exists
    sorter = MergeSort.new
    assert sorter
  end

  def test_empty_array_is_returned_as_sorted
    sorter = MergeSort.new
    array = []

    sorted = sorter.sort(array)

    assert_equal [], sorted
  end

  def test_array_of_one_is_returned_as_sorted
    sorter = MergeSort.new
    array = [1]

    sorted = sorter.sort(array)

    assert_equal [1], sorted
  end

  def test_can_merge_with_empty_array
    sorter = MergeSort.new
    left_array = []
    right_array = [1, 2, 3]

    merged = sorter.merge_arrays(left_array, right_array)

    assert_equal [1, 2, 3], merged
  end

  def test_can_merge_arrays_larger_arrays
    sorter = MergeSort.new
    left_array = [1, 3, 5]
    right_array = [2, 4, 7]

    merged = sorter.merge_arrays(left_array, right_array)

    assert_equal [1, 2, 3, 4, 5, 7], merged
  end
end
