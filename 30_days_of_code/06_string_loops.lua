--[[
    Given a string, S, of length N that is indexed from 0 to N-1, print its even-indexed and odd-indexed 
    characters as 2 space-separated strings on a single line (see the Sample below for more detail).
]]--

local lines = io.read("*number", "*l")
for i = 1, lines do
    local line = io.read("*l")
    local even = ""
    local odd = ""

    for j = 1, #line do
        if (j == 0 or j % 2 == 0) then
            even = even .. line:sub(j,j)
        else
            odd = odd .. line:sub(j,j)
        end
    end

    print(odd .. " " .. even)    
end