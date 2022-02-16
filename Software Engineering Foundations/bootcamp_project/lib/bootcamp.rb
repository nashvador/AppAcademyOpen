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

    def student_to_teacher_ratio
        ratio = @students.length / @teachers.length
        return ratio.floor
    end

    def add_grade(name, score)
        if enrolled?(name)
            @grades[name] << score
            return true
        else
            return false
        end
    end

    def num_grades(name)
        return @grades[name].length
    end

    def average_grade(name)
        if @students.include?(name) && @grades[name].length >= 1
            mean = @grades[name].reduce(0) {|a,v| a+v } / @grades[name].count
            return mean
        else
            return nil
        end
    end
 
end
