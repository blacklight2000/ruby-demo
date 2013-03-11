require "benchmark" 
require "regexp"
 
n = 1000
Benchmark.bmbm {|x| 
  x.report("name_regex") { n.times {Name_Regex.name_regex("Vietnhi Nguyen Phuvan")} } 
  x.report("split") { n.times { "Vietnhi Nguyen Phuvan".split(' ') } }
} 

