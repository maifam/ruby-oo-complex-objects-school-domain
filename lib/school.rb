class School 

    attr_reader :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
        
    end 

    def add_student(name, grade)
        @roster[grade] ||= [] 
        @roster[grade] << name
    end 

    def grade(student_grade)
        @roster[student_grade]
    end 

    def sort 
        sort_list = {} 
        @roster.each do |grade, student| 
            sort_list[grade] = student.sort
        end 
        
        sort_list
    end 
end 