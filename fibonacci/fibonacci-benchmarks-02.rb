require "benchmark" 
require "fibonacci"
nCases = 5 
n = 32
Benchmark.bmbm {|x| 
  1.upto(nCases) do |c|
    x.report("Case"+c.to_s) { Kernel.const_get("Case"+c.to_s).fibonacci(n) }
  end
} 

