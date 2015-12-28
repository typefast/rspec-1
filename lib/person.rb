class Person
  attr_accessor :name, :age, :sex
  def initialize(name, age, sex)
    @name = name
    @age = age
    @sex = sex
  end
  
  def greet
    "Hello there, I am #{@name} and I am #{@age}."
  end
end