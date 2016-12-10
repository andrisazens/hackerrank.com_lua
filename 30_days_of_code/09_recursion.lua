--Write a factorial function that takes a positive integer, N as a parameter and prints the result of N! ( factorial).

local n = io.read("*number", "*l")

function factorial(n)
    if (n == 1) then
        return 1
    else
        return n * factorial(n - 1)
    end
end

local sum = factorial(3)
print(sum)

-- Test case 1: 5 => 120
