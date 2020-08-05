require 'pry'
class School
  attr_accessor :roster
  
  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end


  def add_student(name, grade)
    if (!@roster[grade])  
        @roster[grade] = []
    end 
    @roster[grade] << name
    end

  def grade(grade)
    #enter argument of grade, and return array of names
    roster[grade]
    end 

  def sort
    roster.each do |grade, names|
        names.sort!
    end 
  end 

end  
0