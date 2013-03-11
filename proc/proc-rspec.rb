require 'rspec'
require 'proc'

a=[1,2,3,4]

describe A do
  context "use proc method" do
    it "increments array a by 3" do
      A.proc_test(3,*a).should==[4,5,6,7]
    end
  end
end

describe A do
  context "use map method" do
    it "increments array a by 3" do
      A.map_test(3,*a).should==[4,5,6,7]
    end
  end
end

