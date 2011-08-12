module InsuranceReferenceValidator
  def self.valid?(reference)
    return reference.length == 17      
  end
end