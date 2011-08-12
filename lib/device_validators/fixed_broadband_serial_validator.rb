module FixedBroadbandSerialValidator
  def self.valid?(serial)
    return false unless serial
    validate_length_of_serial(serial) && correct_serial_format?(serial)
  end
  
  def self.validate_length_of_serial(serial)
    serial.length == 11
  end

  def self.correct_serial_format?(serial)
    serial[0,2] == 'CP' || serial[0,2] == '10'  
  end
end