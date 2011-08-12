--[[ Find the 1001st prime number --]]


primes = {}
primes[1] = 2
primes[2] = 3

function isPrime(x)
  for i=1, #primes do
    
    local val = primes[i]
    if val > (x^0.5) then
      return true
    end
    
    if ((x % val) == 0) then
      return false
    end
  end
end

for i=4, math.huge do
  if (i%2)~=0 then
    if isPrime(i) then
      primes[#primes+1] = i
    end
  
    if #primes == 10001 then
      break
    end
  end
end

print("10001st prime is: "..tostring(primes[#primes]))