Dir[File.dirname(__FILE__) + '/device_validators/*.rb'].each {|file| require file }

module DeviceValidators
  include ImeiValidator
  include InsuranceReferenceValidator
  include AccessoryTagValidator
  include DeviceReferenceValidator
  include FixedBroadbandSerialValidator
  include InternationalCallingCardValidator
  include SimSerialValidator
  include MotorolaValidator
end
