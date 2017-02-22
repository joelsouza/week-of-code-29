require_relative 'day-of-the-programmer'
require 'test/unit'

class TestDayOfTheProgrammer < Test::Unit::TestCase
  def test_julian?
    assert_equal(true, DayOfTheProgrammer.new(1917).julian?)
    assert_equal(true, DayOfTheProgrammer.new(1917).julian?)
  end

  def test_gregorian?
    assert_equal(true, DayOfTheProgrammer.new(1919).gregorian?)
  end

  def test_leap?
    assert_equal(true, DayOfTheProgrammer.new(2016).leap?)
    assert_equal(true, DayOfTheProgrammer.new(2020).leap?)

    assert_equal(false, DayOfTheProgrammer.new(2021).leap?)
    assert_equal(false, DayOfTheProgrammer.new(2022).leap?)
  end

  def test_days_in_month
    assert_equal(29, DayOfTheProgrammer.new(2016).days_in_month(2))
    assert_equal(29, DayOfTheProgrammer.new(2016).days_in_month(2))
    assert_equal(14, DayOfTheProgrammer.new(1918).days_in_month(2))
  end

  def test_print
    assert_equal('13.09.2017', DayOfTheProgrammer.new(2017).print)
    assert_equal('12.09.2016', DayOfTheProgrammer.new(2016).print)
  end
end
