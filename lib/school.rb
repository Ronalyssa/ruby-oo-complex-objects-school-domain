# code here!
class School
    attr_reader :school_name, :roster
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster[grade] 
            @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end

    def grade(grade)
        return @roster[grade]
    end

    def sort
        roster.each_value do |name|
            name.sort!
        end
        @roster
    end

end