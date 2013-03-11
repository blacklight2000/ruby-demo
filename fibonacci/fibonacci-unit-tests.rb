require 'test/unit'
require 'fibonacci'

class FibonacciTest < Test::Unit::TestCase
  @msg = "Input Error: fibonacci algorithms only accepts a non-negative integer as input"
  def test_Case1_pass
    assert_equal 6765,Case1.fibonacci(20)
  end
  def test_Case2_pass
    assert_equal 6765,Case2.fibonacci(20)
  end
  def test_Case3_pass
    assert_equal 6765,Case3.fibonacci(20)
  end
  def test_case4_pass 
    assert_equal 6765,Case4.fibonacci(20)
  end
  def test_Case5_pass
    assert_equal 6765,Case5.fibonacci(20)
  end
  def test_pass
    assert_equal 6765,Case1.fibonacci(20)
    assert_equal 6765,Case2.fibonacci(20)
    assert_equal 6765,Case3.fibonacci(20)
    assert_equal 6765,Case4.fibonacci(20)
    assert_equal 6765,Case5.fibonacci(20)
  end

  def test_Case1_fail
    assert_equal @msg,Case1.fibonacci(0)
    assert_equal @msg,Case1.fibonacci(0.5)
    assert_equal @msg,Case1.fibonacci("0")
  end
  def test_Case2_fail
    assert_equal @msg,Case2.fibonacci(0)
    assert_equal @msg,Case2.fibonacci(0.5)
    assert_equal @msg,Case2.fibonacci("0")
  end
  def test_Case3_fail
    assert_equal @msg,Case3.fibonacci(0)
    assert_equal @msg,Case3.fibonacci(0.5)
    assert_equal @msg,Case3.fibonacci("0")
  end
  def test_Case4_fail
    assert_equal @msg,Case4.fibonacci(0)
    assert_equal @msg,Case4.fibonacci(0.5)
    assert_equal @msg,Case4.fibonacci("0")
  end
  def test_Case5_fail
    assert_equal @msg,Case5.fibonacci(0)
    assert_equal @msg,Case5.fibonacci(0.5)
    assert_equal @msg,Case5.fibonacci("0")
  end
 
end
