class Student
  #attr_reader :courses, :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @courses = []
  end

  def enroll(new_course)
    @courses << new_course unless @courses.include?(new_course)
    #course.student << self
  end

  def courses
    @courses
  end

  def first_name
    @first_name.to_s
  end

  def last_name
    @last_name.to_s
  end

  def name
    @first_name.to_s + " " + @last_name.to_s
  end
end
