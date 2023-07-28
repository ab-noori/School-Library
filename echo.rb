require "./classes/Person.rb"
require "./classes/CapitalizeDecorator"
require "./classes/TrimmerDecorator"

person = Person.new('Maximilianus', 22)
puts person.correct_name
# Output: Maximilianus

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
# Output: Maximilianus

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
# Output: Maximilian