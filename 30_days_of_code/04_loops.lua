--[[
    Task: Given an integer, n, print its first 10 multiples. Each multiple n*i (where 1 <= i <= 10) should be printed on a new line in the form: n x i = result.
]]--

n = io.read("*number", "*l")
for i = 1,10 do
    print(string.format("%i x %i = %i", n, i, (n*i)))  
end