file = File.open("Day03 - Ruby/day03_input.txt")

lines = file.read.split()
file.close

x = 0
y = 0
trees = 0

while y < lines.size - 1
  if ((x + 3) < lines[y].size)
      x += 3
  else
      x -= 28
  end
  
  y += 1
    
  if (lines[y].slice(x) == '#')
    trees += 1
  end
end

print 'Answer: ', trees