--[[Given an integer, , perform the following conditional actions:
If  is odd, print Weird
If  is even and in the inclusive range of 2 to 5, print Not Weird
If  is even and in the inclusive range of 6 to 20, print Weird
If  is even and greater than 20, print Not Weird]]--

N = io.read("*number", "*l")

if (N % 2 ~= 0) then
    print("Weird")
elseif (N >= 2 and N <= 5) then
    print("Not Weird")
elseif (N >= 6 and N <= 20) then
    print("Weird")
else
    print("Not Weird")
end

