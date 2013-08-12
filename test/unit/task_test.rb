require 'test_helper'

class TaskTest < ActiveSupport::TestCase
   test "should not save without description" do
     task = Task.new
     assert !task.save
   end

   test "should save with a description" do
     task = Task.new(:description => "Buy Bread")
     assert task.save
     assert_not_nil Task.find_by_description("Buy Bread"), "Failed to find item that was just added"
   end
end
