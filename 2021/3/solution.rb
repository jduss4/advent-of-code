require_relative "../../solutions.rb"

class Solution < Solutions

  def problem_one
    columns = split_digits
    calc_power(columns)
  end

  def problem_two
  end

  private

  def bin_to_dec(nums)
    "0b#{nums}".to_i(2)
  end

  def calc_power(columns)
    new_gamma = []
    new_epsilon = []
    columns.each do |index, column|
      gamma_digit = calc_most_popular(column)
      epsilon_digit = gamma_digit == "0" ? "1" : "0"
      new_gamma << gamma_digit
      new_epsilon << epsilon_digit
    end
    gamma = bin_to_dec(new_gamma.join)
    epsilon = bin_to_dec(new_epsilon.join)
    gamma * epsilon
  end

  def calc_most_popular(array)
    array.count("0") > array.count("1") ? "0" : "1"
  end

  def split_digits
    columns = {}
    @input.each do |binary|
      binary.chars.each_with_index do |d, i|
        columns[i] = [] if !columns.key?(i)
        columns[i] << d
      end
    end
    columns
  end
end
