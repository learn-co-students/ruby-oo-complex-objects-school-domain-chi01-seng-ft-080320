class School

attr_reader :roster, :add_student

def initialize(name)
@name = name 
@roster = {}
end

def add_student(name, grade)
roster[grade] ||= []
roster[grade] << name
end

def grade(grade)
roster[grade]
end

def sort
roster.each_value  {|grade|grade.sort!}
end

end
