class A
  @sum = Proc.new { |c,i| c + i }
  def self.proc_test(c,*a)
    ars = []
    a.each { |ai| ars << @sum.call(c,ai)}
    ars
  end
  def self.map_test(c,*a)
    ars = []
    a.map { |i| ars << i + c }
     ars
   end
end

