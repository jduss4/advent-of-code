require_relative "../../solutions.rb"

class Solution < Solutions

  def problem_one
    set_position

    p1_calc_forward
    p1_calc_depth
    @horizontal * @depth
  end

  def problem_two
    set_position

    p2_calc_position
    @horizontal * @depth
  end

  private

  def direction_sums(direction)
    counts = @input
      .select { |row| row.include?(direction) }
      .map { |item| item.sub(/[A-z]*\s/, "").to_i }
    counts.sum
  end

  def p1_calc_depth
    down = direction_sums("down")
    up = direction_sums("up")
    # note: depth is "positive" (10 depth, not -10 depth)
    @depth = down - up
  end

  def p1_calc_forward
    @horizontal = direction_sums("forward")
  end

  def p2_calc_position
    @input.each do |row|
      dir, value = row.split(" ")
      num = value.to_i

      case dir
      when "forward"
        @horizontal += num
        @depth += (num * @aim)
      when "up"
        @aim -= num
      when "down"
        @aim += num
      end
    end
  end

  def set_position
    @horizontal = 0
    @depth = 0
    @aim = 0
  end
end
