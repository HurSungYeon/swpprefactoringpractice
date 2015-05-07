require_relative "DateCalculator"
require "minitest/autorun"

class TestDateCalculator < Minitest::Test
    def helper_leapyear(year)
	calc = DateCalculator.new(0)
	calc.year = year
	return calc.leap_year?
    end

    def test_leapyear
	assert helper_leapyear(2004)

	assert_false helper_leapyear(1900)

	assert helper_leapyear(2000)
   end

   def help_addregularyear(days, year)
	calc = DateCalculator.new(days)
	calc.year = year
	calc.add_regular_year
	return calc.year
   end

   def test_addregularyear
	assert_equal help_addregularyear(255,2009), 2009

	assert_equal help_addregularyear(400,2009), 2010

	assert_equal help_addregularyear(365,2009), 2010
   end


end
