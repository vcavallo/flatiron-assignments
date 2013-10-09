require 'pry'

class School

  @roster = {1 => ["tom","dick"]}

  def initialize(school_name)
    @school_name = school_name
  end

  def add_student(name, grade)
    @roster[grade]  
  end

  def grade(grade)
    @roster[grade]
  end

end

binding.pry