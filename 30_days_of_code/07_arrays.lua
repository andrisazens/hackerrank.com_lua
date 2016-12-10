--Given an array, A, of N integers, print 's elements in reverse order as a single line of space-separated numbers.

n = io.read("*number", "*l")
arr = {}
arr_temp = io.read()
arr_i = 1;
for token in string.gmatch(arr_temp, "[^%s]+") do
   arr[arr_i] = token
   arr_i = arr_i + 1
end
