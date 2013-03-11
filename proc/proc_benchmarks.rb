require "benchmark" 
require "proc"
 
n = 1000
Benchmark.bmbm {|x| 
  a = [1,2,3,4]
  x.report("proc_test") { n.times { A.proc_test(3,*a)} } 
  x.report("map_test") { n.times { A.map_test(3,*a)} } 
} 

