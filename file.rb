=begin
 add_header copies the directory tree Level0 to a new directory tree Level0.new
 and recursively adds a header to every .rb file in Level0.new
=end  
def add_header
  Dir['/root/Level0/**/*.rb'].each do |f|
     fin = File.open(f,'r')
     fout = File.open(f.sub(/(Level0)/,'\1.new'),'w')
     header = <<-HEADER
Program: #{f.split('/').last}
Author: Vietnhi Phuvan
Maintainer: Rekha Sapre, Kim Nguyen
 -----------------------------------
HEADER
     l = fin.read
     fout.write(header)
     fout.write(l)
     fout.close
     fin.close
  end
end

=begin
   same as first version, except for inclusion of error handling
=end
def add_header_v2
  Dir['/root/Level0/**/*.rb'].each do |f|
     fin = File.open(f,'r')
     fout = File.open(f.sub(/(Level0)/,'\1.new'),'w')
     header = <<-HEADER
Program: #{f.split('/').last}
Author: Vietnhi Phuvan
Maintainer: Rekha Sapre, Kim Nguyen
 -----------------------------------
HEADER
     begin
       l = fin.read
       fout.write(header)
       fout.write(l)
       fout.close
       fin.close
     rescue
       puts "Manually check that file #{f} is processed successfully"
     end
  end
end


=begin
   test_header is a functional test that QA's that the header was recursively
   successfully added to every .rb file in Level0.new. The test lists every
   file where the header was successfully added
=end
def test_header
  Dir['/root/Level0.new/**/*'].reject{|fn|  File.directory?(fn)}.each do |f|
    fin = File.open(f,'r')
    l = fin.read
    fin.close
    puts f if l.grep(/Vietnhi/).nitems > 0
    l = []
  end
end
