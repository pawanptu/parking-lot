module VehiclesHelper
  status = %w{ parked left }
  def calculate_charge(s)
    Human_time.seconds_to_string(s)
  end
end
