require "my_study_gem_plan/version"
# require_relative '../lib/algorithm/search.rb_copy'
# require_relative '../lib/algorithm/search.rb_'
module MyStudyGemPlan
  # class Error < StandardError; end
  # # Your code goes here...
  # class MyLinearSearch < LinearSearch.rbC; end
  #
  # class MyBinarySearch < BinarySearch.; end
  module Algorithm
    class LinearSearch
      def search_array(arr, value_search)
        message = "Element is not found"
        for value in arr do
          if value == value_search
            message = "Target element is found"
            break
          end
        end
        return message
      end

      def search_array_index(arr, value_search)
        message = "Element #{value_search} is not present in array"
        arr.each_with_index do |value, index|
          if value == value_search
            message = "Element #{value_search} is present at index #{index}"
            break
          end
        end
        return message
      end
    end

    class LinearSearch
      def search_array(arr, value_search)
        message = "Element is not found"
        for value in arr do
          if value == value_search
            message = "Target element is found"
            break
          end
        end
        return message
      end

      def search_array_index(arr, value_search)
        message = "Element #{value_search} is not present in array"
        arr.each_with_index do |value, index|
          if value == value_search
            message = "Element #{value_search} is present at index #{index}"
            break
          end
        end
        return message
      end
    end
  end
end
