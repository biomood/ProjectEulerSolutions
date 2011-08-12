--[[ Find the largest prime factor of the number 600851475143 --]]

composite = 600851475143
factor = {}
    
function isPrime(x)
  for i=2, x^0.5 do
    if (x%i)==0 then
      return false
    end
  end
  return true
end

function getLargestPrimeFactor()
  local j = 1
  for i=2, composite^0.5 do
    if (((composite%i)==0) and (isPrime(i))) then
      factor[j] = i
      j = j + 1
    end
  end
end

getLargestPrimeFactor()
print("prime is: "..tostring(factor[#factor]))