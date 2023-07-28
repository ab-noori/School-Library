require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(name: 'Unknown', age: 0, parent_permission: true, classroom: nil)
    super(name, age, parent_permission)
    @classroom = classroom
    classroom&.add_student(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
