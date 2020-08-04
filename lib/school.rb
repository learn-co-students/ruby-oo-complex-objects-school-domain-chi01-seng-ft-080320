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
        sorted_roster = {}
        @roster.each do |key, value| #where key is the grade and value are students names
        sorted_roster[key] = value.sort
        end
        sorted_roster 
    end
end #of School class