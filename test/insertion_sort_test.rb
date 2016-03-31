require "minitest/autorun"
require "minitest/pride"
require "insertion_sort"

class InsertionSortTest < Minitest::Test

  def test_class_exists
    sorter = InsertionSort.new
    assert sorter
  end

end
