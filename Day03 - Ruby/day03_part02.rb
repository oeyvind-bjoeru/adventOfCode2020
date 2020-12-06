file = File.open("Day03 - Ruby/day03_input.txt")

lines = file.read.split()
file.close

def check_slopes(right, down, lines)

  x = 0
  y = 0
  trees = 0

  while y < lines.size - 1
    if ((x + right) < lines[y].size)
        x += right
    else
        x -= 31 - right
    end
    
    y += down
      
    if (lines[y].slice(x) == '#')
      trees += 1
    end
  end
  
  return trees
end

result = 1
moves = [[1, 1], [3, 1], [5, 1], [7, 1], [1, 2]]
moves.each do |item|
  result = result * check_slopes(item[0], item[1], lines)
end

print 'Answer: ', result