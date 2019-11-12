class Instructor

    attr_accessor :name

    @@all = []


    def initialize(name)
        @name = name
        @@all << self 
    end 

    def self.all
        @@all
    end 

#takes in student instance & test name
#if the is a BoatingTest where test name & student == values passed in
#returns status to "passed"
#if no test, creat test w/ (student, test_name, status = "passed")
    def pass_student(student, test_name)
      tests_to_pass = BoatingTest.all.find do |boatingtest|
        if boatingtest.student.first_name == student.first_name && boatingtest.test_name == test_name 
            tests_to_pass.status = "passed"
         else #if no such match, create match & status: "passed"
            BoatingTest.new(student, test_name, "passed", self)
         end
         #binding.pry
      end
    end 

end
