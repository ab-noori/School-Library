require_relative "Nameable.rb"

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(name = "Unknown", age = 0, parent_permission = true)
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name 
    @name
  end

  private

  def of_age?
    @age >= 18
  end

  def generate_id
    rand(10000..99999)
  end
end
