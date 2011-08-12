module SimSerialValidator
  def self.valid?(sim_serial)
    return false unless sim_serial
    validate_length(sim_serial) && isint(sim_serial)
  end

  def self.isint(str)
    return str =~ /^\d+$/
  end

  def self.validate_length(sim_serial)
    sim_serial.length == 19 
  end
end