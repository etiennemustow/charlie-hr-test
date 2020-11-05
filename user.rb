require 'date'

class User
    attr_reader :name, :date_of_birth
    def initialize(name, date_of_birth)
    @name = name
    @date_of_birth = date_of_birth
    end

    def age
        ((Date.today - @date_of_birth) / 365.25).to_i
    end

    def next_birthday
       birthday = @date_of_birth.next_year()
       next_year = Date.today.next_year()
       Date.new(next_year.year, birthday.month, birthday.day)
    end
 end
  