--[[ Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum --]]

sqrsum = 0
sumsqr = 0

for i=1, 100 do
  sumsqr = sumsqr + (i*i)
  sqrsum = sqrsum + i
end

sqrsum = sqrsum * sqrsum

diff = sqrsum - sumsqr
print("Diff is: "..tostring(diff))