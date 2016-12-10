--[[
    Given n names and phone numbers, assemble a phone book that maps friends' names to their respective phone numbers.
    You will then be given an unknown number of names to query your phone book for. For each queried, print the associated entry 
    from your phone book on a new line in the form name=phoneNumber; if an entry for name is not found, print Not found instead.
]]--

n = io.read("*number", "*l")
phoneBook = {}
for i = 1,n do
    local phoneNumberLine = io.read("*l")    
    local splitted = {}
    for token in string.gmatch(phoneNumberLine, "[^%s]+") do
        splitted[#splitted + 1] = token        
    end    

    phoneBook[splitted[1]] = splitted[2]
end

local names = io.read("*a")
for name in string.gmatch(names, "[^%s]+") do    
    if (phoneBook[name] == nil) then
        print("Not found")
    else
        print(string.format("%s=%s", name, phoneBook[name]))
    end
end


