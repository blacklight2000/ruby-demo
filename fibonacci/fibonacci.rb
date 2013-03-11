class Case1
  @msg = "Input Error: fibonacci algorithms only accepts a non-negative integer as input"
  def self.fibonacci(n)
    begin
      raise @msg if ( n<1 || !(n.integer?) ) 
      (n==1 || n==2) ? 1 : fibonacci(n-1) + fibonacci(n-2)
    rescue
      puts @msg
    end
  end
end

class Case2
  @msg = "Input Error: fibonacci algorithms only accepts a non-negative integer as input"
  def self.fibonacci(n)
    begin
      raise @msg if ( n<1 || !(n.integer?) ) 
      n>2 ? fibonacci(n-1) + fibonacci(n-2) : 1
    rescue
      puts@msg
    end
  end
end

class Case3
  @msg = "Input Error: fibonacci algorithms only accepts a non-negative integer as input"
  def self.fibonacci(n)
    begin
      raise @msg if ( n<1 || !(n.integer?) ) 
      if (n==1 or n ==2)
        return 1
      else 
        return fibonacci(n-1) + fibonacci(n-2)
      end
    rescue
      puts @msg
    end
  end
end

class Case4
  @msg = "Input Error: fibonacci algorithms only accepts a non-negative integer as input"
  def self.fibonacci(n)
    begin
      raise @msg if ( n<1 || !(n.integer?) ) 
      case n
        when 1
          return 1
        when 2
          return 1
        else
          fibonacci(n-1) + fibonacci(n-2)
      end
    rescue
      puts @msg
    end
  end
end

class Case5
  @msg = "Input Error: fibonacci algorithms only accepts a non-negative integer as input"
  def self.fibonacci(n)
    begin
      raise @msg if ( n<1 || !(n.integer?) ) 
      case n
        when 1
          return 1
        when 2
          return 1
        else
          i = []
          i[0], i[1] = 1, 1
          3.upto(n) { i[0], i[1] = i[1], i[1]+i[0] }
          return i[1]
      end
    rescue
      puts @msg
    end
  end
end
