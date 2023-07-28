require_relative 'classroom'
require_relative 'book'
require_relative 'nameable'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :parent_permission, :rentals

  def initialize(name: 'Unknown', age: 0, parent_permission: true)
    super()
    @id = generate_id
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
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
    rand(10_000..99_999)
  end
end
