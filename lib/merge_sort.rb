class MergeSort

  def sort(array)
    array = clean_array(array)
    return array if array.size < 2


  end


  private

  def clean_array(array)
    array.reject {|i| i.to_s.empty?}
  end

end
