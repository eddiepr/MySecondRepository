class NoisePrinter
  def initialize(vehicles)
    @vehicles = vehicles
  end
  def print_noise
	  	@vehicles.each(0) do | i |
			i.sound		
		end
  end
end