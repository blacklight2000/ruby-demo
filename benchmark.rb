require "benchmark" 
test = "hi man" 
m = test.method(:length) 
n = 100000 
Benchmark.bmbm {|x| 
  x.report("call") { n.times { m.call } } 
  x.report("send") { n.times { test.send(:length) } } 
  x.report("eval") { n.times { eval "test.length" } } 
} 

