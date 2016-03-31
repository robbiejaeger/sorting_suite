require "minitest/autorun"
require "minitest/pride"
require "merge_sort"

class MergeSortTest < Minitest::Test

  def test_class_exists
    sorter = MergeSort.new
    assert sorter
  end

end
