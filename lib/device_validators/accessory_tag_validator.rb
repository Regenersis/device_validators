module AccessoryTagValidator
  def self.valid?(tag)
    return false unless tag
    validate_length_of_tag(tag) && correct_tag_format?(tag)
  end

  def self.validate_length_of_tag(tag)
    tag.length == 10
  end

  def self.correct_tag_format?(tag)
    tag[0, 4]=='O2SC' && tag[5..-1]=~ /^[-+]?[0-9]+$/
  end
end