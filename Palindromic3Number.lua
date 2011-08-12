--[[ Find the largest palindrome made from the product of two 3-digit numbers.--]]

-- returns true if x is a palindrome
function isPalindrome(x)
  local xStr = tostring(x)
  
  for i=1, math.floor(string.len(xStr)/2) do
    local c = string.sub(xStr, i, i)
    local c2 = string.sub(xStr, -1*i, -1*i)
    
    if (c ~= c2) then
      return false
    end
  end
  
  return true
end

palin = 0

for i=100, 999 do
  for j=100, 999 do
    val = i * j
    if isPalindrome(val) then
      if val > palin then
        palin = val
      end
    end
  end
end

print("Largest palindrome of 3by3: "..tostring(palin))