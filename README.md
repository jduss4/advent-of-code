# Advent of Code

Jessica's pathetic attempt at most of these challenges in Ruby.

## Run

To run today's challenge problems (if it exists):

`./run_day.rb`

Specify day in December (and year, optionally):

`./run_day.rb [day_of_month] [year]`


### Tests

`./test_day.rb`

Optionally accepts day of month and year.

## How to make a new day

`./setup_day.rb`

Structure:

```
year/
  |-- day/
       |-- solution.rb
       |-- test.rb
       |-- input.txt
```

Each `solution.rb` inherits the `@input` variable from `Solutions` (which needs a better name).
