require 'pry'

class School
  attr_accessor :roster, :school_name

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster.has_key?(grade)
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.keys.sort
  end

end

binding.pry