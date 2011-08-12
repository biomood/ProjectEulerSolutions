--[[ Sum all of the natural numbers upto 1000 that are multiplications of 3 or 5 --]]

function NaturalSum()
  local sum = 0
  
  for i=1, 999 do
    if (i%3 == 0) or (i%5 == 0) then
      sum = sum + i
    end
  end
  
  io.write("Sum is: " .. tostring(sum) .. "\n")
end

NaturalSum()