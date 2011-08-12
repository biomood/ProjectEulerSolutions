--[[ By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.--]]



function doFibonacci()
  fib = {}
  fib[1] = 1
  fib[2] = 2
  
  local sum = 2
  local term = 0
  
  local i =3
  while (term <= 4000000) do
    term = fib[i-2] + fib[i-1]
    
    if ((term % 2) == 0) then
      sum = sum + term
    end
    
    fib[i] = term
    i = i + 1
  end 
  
  io.write("Sum is: "..tostring(sum).."\n")
end

doFibonacci()