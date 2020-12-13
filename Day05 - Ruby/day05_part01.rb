
data = File.read("Day05 - Ruby/day05_input.txt").split("\n")

seat_IDs = []

for boarding_pass in data
  rows = Array (0..127)
  columns = Array (0..7)

  for fb in boarding_pass[0,7].split(//)
    rows_length = rows.size / 2
    if (fb == "B")
      rows = rows.drop(rows_length)
    elsif (fb == "F")
      rows.pop(rows_length)
    end
  end
  
  for rl in boarding_pass[7,3].split(//)
    col_length = columns.size / 2
    if (rl == "R")
      columns = columns.drop(col_length)
    elsif (rl == "L")
      columns.pop(col_length)
    end
  end
  
  seat_IDs << (rows[0] * 8) + columns[0]
end

puts "Answer: ", seat_IDs.max