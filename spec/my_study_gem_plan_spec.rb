require 'lib/my_study_gem_plan'
RSpec.describe MyStudyGemPlan do
  it "has a version number" do
    expect(MyStudyGemPlan::VERSION).not_to be nil
  end
end

RSpec.describe "Binary Search" do
  binarySearch = MyStudyGemPlan::Algorithm::BinarySearch.new
  it "Ensure call binarySearch function in array search return 6" do
    array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
    index = binarySearch.binarySearch(array, 110, nil, nil)
    expect(index).to eq(6)
  end

  it "Ensure function binarySearch in array search 175 return -1" do
    array = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170]
    index = binarySearch.binarySearch(array, 175, nil, nil)
    expect(index).to eq(-1)
  end

  it "Ensure function binarySearch in array search 23 return 5" do
    array = [2, 5, 8, 12, 16, 23, 38, 56, 72, 91]
    index = binarySearch.binarySearch(array, 23, 0, array.size)
    expect(index).to eq(5)
  end
end

RSpec.describe "Linear Search" do
  value = 20
  array = [10, 50, 30, 70, 80, 60, 20, 90, 40]
  linearSearch = MyStudyGemPlan::Algorithm::LinearSearch.new
  it "ensure search element #{value} is found" do
    result = linearSearch.search_array(array, value)
    expect(result).to eq("Target element is found")
  end

  value_invalid = 75
  it "Ensure Search element(#{value_invalid}) result not found" do
    result = linearSearch.search_array(array, value_invalid)
    expect(result).to eq("Element is not found")
  end

  value_valid = 110
  array = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170]
  it "ensure found #{value_valid} in array result index and element" do
    result = linearSearch.search_array_index(array, value_valid)
    expect(result).to eq("Element 110 is present at index 6")
  end

  value_invalid = 175
  it "ensure search by element #{value_invalid} is not present in array" do
    result = linearSearch.search_array_index(array, value_invalid)
    expect(result).to eq("Element 175 is not present in array")
  end
end
