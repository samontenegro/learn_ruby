def pad(n)
  if n.to_s.size < 2
    return (n.to_s << "0").reverse
  else
    return n.to_s
  end
end

class Timer
  #write your code here
  attr_accessor :seconds
  attr_reader :time, :time_string

  def initialize()
    @time = {hrs: "00", min: "00", sec: "00"}
    @seconds = 0
  end

  def time_string()
    return @time.map {|k,v| v}.join(":")
  end

  def seconds=(n)
    hours = (n - (n % 3600)) / 3600
    minutes = ( (n % 3600) - ((n % 3600) % 60)) / 60
    seconds = n - (hours*3600) - (minutes*60)

    @time = {hrs: "00", min: "00", sec: "00"}
    @time[:hrs] = pad(hours)
    @time[:min] = pad(minutes)
    @time[:sec] = pad(seconds)
  end
end