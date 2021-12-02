require_relative "../../solutions.rb"

class Solution < Solutions

  def problem_one
    @forward = 0
    @depth = 0

    calc_forward
    calc_depth
    @forward * @depth
  end

  def problem_two
  end

  private

  def calc_depth
    down = direction_sums("down")
    up = direction_sums("up")
    # note: depth is "positive" (10 depth, not -10 depth)
    @depth = down - up
  end

  def calc_forward
    @forward = direction_sums("forward")
  end

  def direction_sums(direction)
    counts = @input
      .select { |row| row.include?(direction) }
      .map { |item| item.sub(/[A-z]*\s/, "").to_i }
    counts.sum
  end
end
