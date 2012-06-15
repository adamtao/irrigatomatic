class Zone
  attr_accessor :number

  def self.r8
  	Rain8net.new
  end

  def initialize(num)
  	@number = num
  end

  def turn_on
    if Time.now.hour >= 10 && Time.now.hour <= 18
      raise "Watering not permitted at this time"
    else
      if precip?
        raise "Watering not permitted because rain is in the forecast"
      else
        Zone.r8.turn_on_zone @number
      end
    end
  end

  def turn_off
    Zone.r8.turn_off_zone @number
  end

  def self.all_off
    self.r8.turn_all_off
  end

  def status
  end

  def force_on
  	Zone.r8.turn_on_zone @number
  end

  private

  # Is there precipitation? Pass in these parameters:
  #   days_to_check (0 = today, 1 = today and tomorrow, 2 = today, tomorrow, the next day)
  #
  def precip?(days_to_check=1)
  	return false unless Rails.env.production?
    yw = Weatherman::Client.new
    weather = yw.lookup_by_woeid(YAHOO_WEATHER_WOEID)
    reg = /shower|rain|precip|thunder|snow|hail/i
    text = weather.condition["text"] # always check current conditions
    weather.forecasts[0..days_to_check].each do |d|
      text += " #{d['text']}"
    end
    (text.match(reg)) ? true : false
  end

end