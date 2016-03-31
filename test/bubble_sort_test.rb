require "minitest/autorun"
require "minitest/pride"
require "bubble_sort"

class BubbleSortTest < Minitest::Test

  def test_class_exists
    sorter = BubbleSort.new
    assert sorter
  end

end
