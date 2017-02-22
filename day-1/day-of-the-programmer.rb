require 'date'
class DayOfTheProgrammer
  TRANSITION_YEAR = 1918
  COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  def initialize(year)
    @year = year
  end

  def julian?
    (1700..1917).cover? @year
  end

  def gregorian?
    (1919..2700).cover? @year
  end

  def leap?
    if julian?
      return true if (@year % 4).zero?
    end

    if gregorian?
      return true if (@year % 4).zero?
      return true if (@year % 4).zero? && !(@year % 100).zero?
    end

    false
  end

  def days_in_month(month)
    if month == 2
      return (28 - 14) if @year == TRANSITION_YEAR
      return 29 if leap?
    end
    COMMON_YEAR_DAYS_IN_MONTH[month]
  end

  def the_day
    days = 0
    (1..12).each do |month|
      if days + days_in_month(month) >= 256
        return DateTime.new(@year, month, 256 - days)
      end
      days += days_in_month(month)
    end
  end

  def print
    the_day.strftime('%d.%m.%Y')
  end
end
