local arr = {}
for arr_i = 1,6 do
   arr_temp = io.read()
   arr_j = 1
   arr[arr_i] = {}
   for token in string.gmatch(arr_temp, "[^%s]+") do
      arr[arr_i][arr_j] = token
      arr_j = arr_j + 1
   end
end

local max = 0
for i = 1, 4 do
    for j = 1, 4 do
        local firstRow = arr[i][j] + arr[i][j+1] + arr[i][j+2]
        local secondRow = arr[i+1][j+1]
        local thirdRow = arr[i+2][j] + arr[i+2][j+1] + arr[i+2][j+2]
        local hourGlassSum = firstRow + secondRow + thirdRow        
        if hourGlassSum > max then 
            max = hourGlassSum
        end
    end
end

print(max)
