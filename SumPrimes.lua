--[[ sum of all the primes below two million --]]

primes = {}
primes[1] = 2
primes[2] = 3

function isPrime(x)
  if ((x%2)~=0) then
    for i=1, #primes do
  
      local val = primes[i]
      if val > (x^0.5) then
        primes[#primes+1] = x
        return true
      end
    
      if (x%val)==0 then
        return false
      end  
    end
  end
  return false
end

sum = 0
sum = sum + 5 

for i=4, 2000000 do
  if isPrime(i) then
    sum = sum + i
  end
end

print("Sum is: "..tostring(sum))