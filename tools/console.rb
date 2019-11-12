require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

power_steer_failure = BoatingTest.new(spongebob, "Power Steering 202", "passed", puff)
power_steer_pass = BoatingTest.new(spongebob, "Power Steering 201", "pending", krabs)
no_crashing = BoatingTest.new(spongebob, "Don't Crash 101", "pending", puff)
power_steering_failure = BoatingTest.new(patrick, "Power Steering 202", "failed", puff)
power_steering_pass = BoatingTest.new(patrick, "Power Steering 201", "passed", krabs)
no_crash = BoatingTest.new(patrick, "Don't Crash 101", "passed", puff)




#binding.pry
#0 #leave this here to ensure binding.pry isn't the last line
