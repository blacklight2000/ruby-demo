require "benchmark" 
require "fibonacci"
 
n = 32
Benchmark.bmbm {|x| 
  x.report("Case1") { Case1.fibonacci(n) } 
  x.report("Case2") { Case2.fibonacci(n) }
  x.report("Case3") { Case3.fibonacci(n) } 
  x.report("Case4") { Case4.fibonacci(n) } 
  x.report("Case5") { Case5.fibonacci(n) } 
} 

