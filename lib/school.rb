require 'pry'
class School
    attr_reader :roster
    def initialize(name)
        @name = name
       @roster = {}
       #binding.pry
    end

    def add_student(student_name, grade)
        if !@roster[grade] 
        @roster[grade] = []
        #binding.pry
        end
        @roster[grade] << student_name
        end

        def grade(student_grade)
           return @roster[student_grade]
        end

        def sort
            @roster.each do |grade, students| students.sort!
        end
        binding.pry
    end

end