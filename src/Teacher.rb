require_relative 'person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(specialization, name = 'Unknown', age = 0)
    super(name: name, age: age)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
