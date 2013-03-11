require 'rspec'
require 'regexp'

describe Name_Regex do
   context "Case #1: full name, arbitrary number of blank spaces" do
     it "captures all three" do
       Name_Regex.name_regex("Victoria  Nancy  Pedersen").should==[["Victoria", "Nancy", "Pedersen"]]
     end
   end
end

describe Name_Regex do
   context "Case #2: full name, arbitrary number of blank spaces" do
     it "captures all three" do
       Name_Regex.name_regex("Victoria Nancy Pedersen").should==[["Victoria", "Nancy", "Pedersen"]]
     end
   end
end
 
describe Name_Regex do
   context "Case #3: first and last names, arbitrary number of blank spaces" do
     it "captures both" do
       Name_Regex.name_regex("Victoria  Pedersen").should==[["Victoria", "Pedersen",""]]
     end
   end
end
 
describe Name_Regex do
   context "Case #4: first and last names, arbitrary number of blank spaces" do
     it "captures both" do
       Name_Regex.name_regex("Victoria Pedersen").should==[["Victoria", "Pedersen",""]]
     end
   end
end

describe Name_Regex do
   context "Case #5: either first or last name, arbitrary number of blank spaces" do
     it "captures one" do
       Name_Regex.name_regex("Victoria ").should==[["Victoria","",""]]
     end
   end
end

describe Name_Regex do
   context "Case #6: either first or last name, arbitrary number of blank spaces" do
     it "captures one" do
       Name_Regex.name_regex("Victoria").should==[["Victoria","",""]]
     end
   end
end


describe Name_Regex do
   context "Case #7: full name (middle initial), arbitrary number of blank spaces" do
     it "captures all three" do
       Name_Regex.name_regex("Victoria  N.  Pedersen").should==[["Victoria", "N.", "Pedersen"]]
     end
   end
end

describe Name_Regex do
   context "Case #8: full name (middle initial), arbitrary number of blank spaces" do
     it "captures all three" do
       Name_Regex.name_regex("Victoria N. Pedersen").should==[["Victoria", "N.", "Pedersen"]]
     end
   end
end

