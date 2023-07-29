require_relative 'person'

class Student < Person
  attr_accessor :classroom

  def initialize(name: 'Unknown', age: 0, parent_permission: true, classroom: nil)
    super(name: name, age: age, parent_permission: true)
    @classroom = classroom
    classroom&.add_student(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
