module MotorolaValidator

  SIM_SERIAL_LENGTH = 15
  SIM_SERIAL_PREFIX = "S"

  def self.valid?(serial_no)
    return false unless serial_no
    validate_prefix(serial_no) && validate_length(serial_no)
  end

  private

  def self.validate_length(serial_no)
    serial_no.length == SIM_SERIAL_LENGTH
  end

  def self.validate_prefix(serial_no)
    serial_no.upcase.start_with?(SIM_SERIAL_PREFIX)
  end

end
