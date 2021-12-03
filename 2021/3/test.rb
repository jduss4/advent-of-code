require "rspec"
require_relative "solution.rb"

RSpec.describe Solution do
  before do
    expect_any_instance_of(Solution).to receive(:file_name).and_return("input_test.txt")
    @solution = Solution.new(__dir__)
  end

  describe "#problem_one" do
    it "tests the first problem" do
      expect(@solution.problem_one).to eq 198
    end
  end

  describe "#problem_two" do
    it "tests the second problem" do
      # expect(@solution.problem_two).to eq "TODO"
    end
  end
end

