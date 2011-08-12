module DeviceReferenceValidator
  def self.valid?(device_reference)
    return false unless device_reference

    [AccessoryTagValidator,
     FixedBroadbandSerialValidator,
     ImeiValidator,
     SimSerialValidator,
     #InternationalCallingCardValidator,
     InsuranceReferenceValidator].any? do |validator|
       validator.valid?( device_reference)
    end
  end
end
