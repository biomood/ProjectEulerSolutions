--[[ smallest positive number that is evenly divisible by all of the numbers from 1 to 20 --]]

function smallestDiv()
  for i=1, math.huge do
    if div20(i) then
      return i
    end
  end
end

function div20(x)
  for j=1, 20 do
    if x%j ~= 0 then
      return false;
    end
  end
  
  return true;
end

val = smallestDiv()
print("Smallest Div is: "..tostring(val))