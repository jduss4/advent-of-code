# TODO make args nicer / user friendlier
require "time"

class DayPicker
  def initialize
    @day = ARGV[0] || Time.now.day.to_s
    @year = ARGV[1] || Time.now.year.to_s
    @dir_path = File.join(@year, @day)
  end

  def run_day
    require_relative File.join(@dir_path, "solution.rb")
    solution = Solution.new(@dir_path)

    puts "Problem number 1: "
    puts solution.problem_one

    puts "Problem number 2: "
    puts solution.problem_two
  end

  def test_day
    cmd = "rspec #{File.join(@dir_path, "test.rb")}"
    exec cmd
  end
end
