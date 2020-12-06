--initialize input values
file = io.open("Day04 - Lua/day04_input.txt", "r")
content = file:read("*all")
file:close()

-- split a string
function split_string(str, delimiter)
  local result = { }
  local from  = 1
  local delim_from, delim_to = string.find(str, delimiter, from)
  while delim_from do
    table.insert(result, string.sub(str, from , delim_from - 1))
    from  = delim_to + 1
    delim_from, delim_to = string.find(str, delimiter, from)
  end
  table.insert( result, string.sub(str, from))
  return result
end

-- check if array contains value
local function has_value (arr, val)
    for index, value in ipairs(arr) do
        if value == val then
            return true
        end
    end

    return false
end

passports = split_string(content, '\n\n')

req_fields = {'byr', 'iyr', 'eyr', 'hgt', 'hcl', 'ecl', 'pid'}
valid_passports = 0

names = {'John', 'Joe', 'Steve'}
for i = 1,#passports do 
  passport = string.gsub(passports[i], '\n', ' ')
  entries = split_string(passport, ' ')
  
  local fields = {}
  
  for j = 1,#entries do
    field = string.sub (entries[j], 1, 3)
    table.insert(fields, field)
  end
  
  valid = true
  for k = 1,#req_fields do
    if has_value(fields, req_fields[k]) == false then
      valid = false
    end
  end
  if valid == true then
    valid_passports = valid_passports + 1
  end
end

print('Answer: ', valid_passports)