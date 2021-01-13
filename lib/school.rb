# code here!
class School
    attr_accessor :roster, :school_name, :name

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster[grade] 
            @roster[grade] << name
        else 
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.map {|key, value| [key, value.sort]}.to_h 
    end

end

