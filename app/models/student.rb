class Student

    attr_reader :first_name

    @@all = []

    def initialize(first_name)
        @first_name = first_name

        @@all << self
            
    end

    def self.all
        @@all
    end 

    def add_boating_test(student, test_name, status, instructor)
        BoatingTest.new(self, test_name, status, instructor)
    end 

    def self.find_student(student_name)
        @@all.find {|student| student.first_name == student_name}
    end 

    #associate student to test
    #total num of tests
    #num of tests passed
    #test passed / total tests .to_f * 100
    def grade_percentage
        total_tests = BoatingTest.all.select {|test|test.student.first_name == self.first_name}
        passed_tests = total_tests.select {|test| test.status == "passed"}
        percentage =  passed_tests.length.to_f / total_tests.length.to_f * 100
    end 

end
