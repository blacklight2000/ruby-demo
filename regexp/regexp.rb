=begin
Assuming that you are writing your name in the order of first name, 
optional middle name or initial, optional last name, this regex will 
capture your names regardless of the number of blanks spaces between each.
=end

class Name_Regex
  def self.name_regex(name_str)
    regex = Regexp.new('(\w+\b)(?: )*(\w+\b?\.?)?(?: )*(.*)?')
    name_str.scan(regex)
  end
end
