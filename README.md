# Advent of Code

Jessica's pathetic attempt at most of these challenges in Ruby.

## Run

To run today's challenge problems (if it exists):

`ruby run_day.rb`

Specify day in December (and year, optionally):

`ruby run_day.rb [day_of_month] [year]`


### Tests

`ruby test_day.rb`

Optionally accepts day of month and year.

## How to make a new day

Structure:

```
year/
  |-- day/
       |-- solution.rb
       |-- test.rb
       |-- input.txt
       |-- output.txt
```

Each `solution.rb` should look like the following and inherits the `@input` variable from `Solutions` (which needs a better name).

```ruby
require_relative "../../solutions.rb"

class Solution < Solutions
  def problem_one
  end

  def problem_two
  end
end
```
