# flights within the next 6 hours we get every 10 minutes
# 6 hours to 24 hours every 30 minutes
# 24 hours to 1 week every 1 hour or 2 hours
# 1 week to 2 weeks every 6 or 12 hours

# ——

# 80 flights per day
# 6 hours out let’s say 20 flights, every 10 minutes => 72 times per day * 20 flights => 1440 messages
# 6 to 24 hr => 60 flights, every 30 minutes => 24 times per day * 60 flights => 1440 messages
# 24 hr to 1 week, 6 days * 80 flights per day => 480 flights

class PaxCargoCalc
  def initialize(flights_per_day)
    @flights_per_day = flights_per_day
  end

  def calculate_messages_per_day
    total = 0
    total += ten_minutes
    total += ten_minutes
    total += ten_minutes
    total += ten_minutes
  end

  private

  def ten_minutes
    flight_count = (6 / 24) * @flights_per_day
    flight_count * 6 * 24 # 6 times per hour for 24 hours
  end
end
