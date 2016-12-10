--[[Given a base-10 integer, n, convert it to binary (base-2). 
Then find and print the base-10 integer denoting the maximum number 
of consecutive 1's in n's binary representation.]]--

local n = io.read("*number", "*l")

function toBitsArray(num)    
    local result = {}
    while num > 0 do
        rest = math.fmod(num, 2)
        result[#result + 1] = rest
        num = (num - rest) / 2
    end
    return result
end

local bitsArr = toBitsArray(n)
local lrgstOnesFollowing = 0
for i = 1, #bitsArr do
    if (bitsArr[i] == 1) then
        lrgstOnesFollowing = lrgstOnesFollowing + 1
    else
        lrgstOnesFollowing = 0
    end
end

print(lrgstOnesFollowing)

-- test case 2: 439 => 3