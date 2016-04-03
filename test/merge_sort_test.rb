require "minitest/autorun"
require "minitest/pride"
require "merge_sort"

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

end
