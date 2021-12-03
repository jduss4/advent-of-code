#!/usr/bin/env ruby

require "fileutils"
require "time"

def touch(file_name)
  FileUtils.touch(File.join(@dir_path, file_name))
end

def template(file_name, text)
  path = File.join(@dir_path, file_name)
  File.open(path, 'w') { |file| file.write(text) }
end

day = ARGV[0] || Time.now.day.to_s
year = ARGV[1] || Time.now.year.to_s
@dir_path = File.join(year, day)
FileUtils.mkdir_p(@dir_path)

touch("input.txt")
touch("input_test.txt")
touch("problem.txt")

solution = %{
  require_relative "../../solutions.rb"

  class Solution < Solutions

    def problem_one
    end

    def problem_two
    end
  end
}

tests = %{
require "rspec"
require_relative "solution.rb"

RSpec.describe Solution do
  before do
    expect_any_instance_of(Solution).to receive(:file_name).and_return("input_test.txt")
    @solution = Solution.new(__dir__)
  end

  describe "#problem_one" do
    it "tests the first problem" do
      expect(@solution.problem_one).to eq "TODO"
    end
  end

  describe "#problem_two" do
    it "tests the second problem" do
      expect(@solution.problem_two).to eq "TODO"
    end
  end
end

}

template("test.rb", tests)
template("solution.rb", solution)
