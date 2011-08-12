module ImeiValidator
  def self.valid?(imei)
    return false unless imei
    validate_length_of_imei(imei) && isint(imei) && is_luhn_valid(imei)
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

  def self.validate_length_of_imei(imei)
    imei.length == 12 || imei.length == 15 || imei.length == 20
  end
end
