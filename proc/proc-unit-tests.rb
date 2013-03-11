require 'test/unit'
require 'proc'

class ProcTest < Test::Unit::TestCase
  def test_pass
    a = [1,2,3,4]
    assert_equal([4, 5, 6, 7],A.proc_test(3,*a))
    assert_equal([4, 5, 6, 7],A.map_test(3,*a))
  end
end
