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

  def test_can_merge_arrays
    sorter = MergeSort.new
    left_array = [1, 3]
    right_array = [2, 4]

    merged = sorter.merge_arrays(left_array, right_array)

    assert_equal [1, 2, 3, 4], merged
  end
end
