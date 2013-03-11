require 'test/unit'
require 'regexp'

class NameRegexTest < Test::Unit::TestCase
  def test_pass
    assert_equal [["Victoria", "Nancy", "Pedersen"]],Name_Regex.name_regex("Victoria  Nancy  Pedersen")
    assert_equal [["Victoria", "Nancy", "Pedersen"]],Name_Regex.name_regex("Victoria Nancy Pedersen")
    assert_equal [["Victoria", "Pedersen", ""]],Name_Regex.name_regex("Victoria  Pedersen")
    assert_equal [["Victoria", "Pedersen", ""]],Name_Regex.name_regex("Victoria Pedersen")
    assert_equal [["Victoria", "", ""]],Name_Regex.name_regex("Victoria ")
    assert_equal [["Victoria", "", ""]],Name_Regex.name_regex("Victoria")
    assert_equal [["Victoria", "N.", "Pedersen"]],Name_Regex.name_regex("Victoria  N.  Pedersen")
    assert_equal [["Victoria", "N.", "Pedersen"]],Name_Regex.name_regex("Victoria N. Pedersen")
  end
end
