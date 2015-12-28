require 'person'

RSpec.describe Person do 
  
  before :each do 
    @person = Person.new("Name", "Age", "Sex")
  end
  
  describe "#new" do 
    it "creates a new Person object" do 
      expect(@person).to be_an_instance_of(Person)
    end
    
    it "raises an error with too few parameters" do 
      expect { person = Person.new("Name", "Age") }.to raise_error(ArgumentError)
    end
  end
  
  describe "#name" do 
    it "returns the name of the person" do 
      expect(@person.name).to eq("Name")
    end
  end
  
  describe "#age" do 
    it "returns the age of the person" do 
      expect(@person.age).to eq("Age")
    end
  end
  
  describe "#sex" do 
    it "returns the sex of the person" do 
      expect(@person.sex).to eq("Sex")
    end
  end
  
  describe "#greet" do 
    it "returns the persons name and age" do 
      expect(@person.greet).to eq("Hello there, I am #{@person.name} and I am #{@person.age}.")
    end
  end
  
end