require "my_study_gem_plan/version"
# require 'lib/algorithm/linear_search'
# require 'lib/algorithm/binary_search'
require_relative 'my_study_gem_plan/algorithm/rch.rb'
require_relative 'my_study_gem_plan/algorithm/rch.rb'
module MyStudyGemPlan
  class Error < StandardError; end
  # Your code goes here...
  module Algorithm
    class MyLinearSearch < LinearSearch; end

    class MyBinarySearch < BinarySearch; end
  end
end
