require './src/nameable'
require './src/person'
require './src/capitalize_decorator'
require './src/trimmer_decorator'

person = Person.new(name: 'Maximilianus', age: 22)
puts person.correct_name
# Output: Maximilianus

capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
# Output: Maximilianus

capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
# Output: Maximilian
