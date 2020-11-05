require_relative 'user.rb'

  tests = [
    Date.new(1986, 1, 1),
    Date.new(1988, Date.today.month, Date.today.day),
    Date.new(2000, 6, 21),
    Date.new(1963, 1, 10),
    Date.new(1969, 5, 6),
    Date.new(2003, 3, 12),
    Date.new(1990, 12, 30),
    Date.new(1997, 7, 7),
    Date.new(1923, 4, 15),
    ]
    puts "====== ages ======"
    tests.each do |date|
    puts "#{date} => #{User.new("Test", date).age}"
    end
    puts "====== birthdays ======"
    tests.each do |date|
    puts "#{date} => #{User.new("Test", date).next_birthday}"
    end
