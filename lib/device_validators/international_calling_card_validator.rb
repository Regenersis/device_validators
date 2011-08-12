module InternationalCallingCardValidator
  def self.valid?(serial_number)
    return false unless serial_number
    validate_icc_length(serial_number) && isint(serial_number) && is_luhn_valid(serial_number) && starts_with_unique_identifier(serial_number)
  end

  private
  def self.is_luhn_valid(digits)
    digits = digits.split(//)
    sum=0
    alt=false

    digits.each do |digit|
      digit = digit.to_i
      if alt
        digit *= 2
        digit -= 9 if digit > 9
      end
      sum += digit
      alt = !alt
    end
    sum % 10 ==0
  end
  
  def self.isint(str)
    return str =~ /^\d+$/
  end

  def self.validate_icc_length(serial_number)
    serial_number.length == 19
  end

  def self.starts_with_unique_identifier(serial_number)
    serial_number.match(/^894411/)
  end
end