class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new {|hash, k| hash[k] = []}
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def student_capacity
    @student_capacity
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(string)
    @teachers << string
  end

  def enroll(student)
    if @students.length <= @student_capacity-1
        @students << student
        return true
    else
        return false
    end
    end

    def enrolled?(check_student)
        if @students.include?(check_student)
            return true
        else
            return false
        end
    end

 
end
