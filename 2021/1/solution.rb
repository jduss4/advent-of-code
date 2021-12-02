require_relative "../../solutions.rb"

class Solution < Solutions

  def problem_one
    calc_increases(@input.map(&:to_i))
  end

  def problem_two
    windows = sum_windows(@input.map(&:to_i))
    calc_increases(windows)
  end

  private

  def calc_increases(input)
    count = 0
    input.each_with_index do |item, index|
      next if index == 0
      count += 1 if increased?(item, input[index-1])
    end
    count
  end

  def increased?(current, previous)
    current > previous
  end

  def sum_windows(input)
    # create windows of three measurements, overlapping
    input.each_with_index.map do |item, index|
      window = [item, input[index+1], input[index+2]]
      window.compact.sum
    end
  end

end
