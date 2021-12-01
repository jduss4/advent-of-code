# TODO make args nicer / user friendlier
require "time"

class DayPicker
  def initialize
    @day = ARGV[0] || Time.now.day.to_s
    @year = ARGV[1] || Time.now.year.to_s
  end

  def run_day
    dir_path = File.join(@year, @day)
    require_relative File.join(dir_path, "solution.rb")

    solution = Solution.new(dir_path)

    puts "Problem number 1: "
    puts solution.problem_one

    puts "Problem number 2: "
    puts solution.problem_two
  end
end

DayPicker.new.run_day
