# code here!
class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    attr_accessor :name, :roster

    def add_student(name, grade)
        if !@roster[grade]
            @roster[grade] = []
            @roster[grade] << name
        else
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        roster_hash = {}
        @roster.each do |student_grade, student_name|
            roster_hash[student_grade] = student_name.sort
        end
        roster_hash
    end

end