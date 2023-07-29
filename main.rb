require_relative 'app'

def main
  app = App.new

  loop do
    puts '------------------------'
    puts 'Welcome to the Library!'
    puts '------------------------'
    puts 'Please choose an option:'
    puts '1. List all books'
    puts '2. List all people'
    puts '3. Create a person'
    puts '4. Create a book'
    puts '5. Create a rental'
    puts '6. List rentals for a person'
    puts '7. Quit'
    print 'Enter your choice: '
    choice = gets.chomp.to_i

    case choice
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      print 'Enter name: '
      name = gets.chomp
      print 'Enter age: '
      age = gets.chomp.to_i
      print 'Enter person type (teacher or student): '
      type = gets.chomp.downcase
      if type == 'teacher'
        print 'Enter specialization: '
        specialization = gets.chomp
        app.create_person(name, age, type, specialization)
      elsif type == 'student'
        app.create_person(name, age, type)
      else
        puts 'Invalid person type.'
      end
    when 4
      print 'Enter book title: '
      title = gets.chomp
      print 'Enter book author: '
      author = gets.chomp
      app.create_book(title, author)
    when 5
      app.create_rental
    when 6
      print 'Enter person ID: '
      person_id = gets.chomp.to_i
      app.list_rentals_for_person(person_id)
    when 7
      puts 'Goodbye!'
      break
    else
      puts 'Invalid choice. Please try again.'
    end
  end
end

# Call the main method to start the app
main
