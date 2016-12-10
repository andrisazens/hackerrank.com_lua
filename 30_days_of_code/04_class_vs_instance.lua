--[[Write a Person class with an instance variable, age, and a constructor that takes an integer, initialAge, as a parameter.
The constructor must assign initialAge to age  after confirming the argument passed as  is not negative; if a negative argument is passed as initialAge,
 the constructor should set initialAge to 0 and print Age is not valid, setting age to 0.. In addition, you must write the following instance methods:
yearPasses() should increase the age instance variable by 1.
amIOld() should perform the following conditional actions:
If age < 13, print You are young..
If age >= 13 and age <= 18, print You are a teenager..
Otherwise, print You are old..--]]

local Person = { };
Person.__index = Person
 
function Person.new (initialAge)
   local self = setmetatable({ },Person);
   if (initialAge > 0) then
       self.age = initialAge
   else
       print "Age is not valid, setting age to 0."
   end
   return self;
end
function Person:amIOld()
    if (self.age < 13) then
        print "You are young.."
    elseif (self.age >= 13 and self.age <= 18) then
        print "You are a teenager.."
    else
        print "You are old.."
    end
end
function Person:yearPasses ()
   self.age = self.age + 1
end

local read = io.read;
local T = read'*n';
for i = 1,T do
   local age = read'*n';
   local p = Person.new(age);
   p:amIOld();
   for j = 1,3 do
      p:yearPasses();
   end
   p:amIOld();
   print"";
end