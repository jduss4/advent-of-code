require "rspec"
require_relative "solution.rb"

RSpec.describe Solution do
  let(:input) {
    [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
  }

  before do
    expect_any_instance_of(Solution).to receive(:get_input).and_return(input)
    @solution = Solution.new(__dir__)
  end

  describe "#problem_one" do
    it "tests the first problem" do
      expect(@solution.problem_one).to eq 7
    end
  end

  describe "#problem_two" do
    it "tests the second problem" do
      expect(@solution.problem_two).to eq 5
    end
  end
end
