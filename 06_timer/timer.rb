class Timer
  require 'date'
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    remainder = @seconds % 3600
    minutes = remainder / 60
    seconds = remainder % 60
    tString = "#{adjustTime(hours)}:#{adjustTime(minutes)}:#{adjustTime(seconds)}"
  end

  def adjustTime(num)
    num.to_s.rjust(2, '0')
  end
end
