name = "Asha"
age = 21
city = "Delhi"
is_learning = true
middle_name = nil
puts name
puts age+1
puts "hello #{name}"
colors = ["red", "blue", "green"]
puts colors[3]
puts colors[0]
puts colors.length
user = { name: "Asha", age: 21 }
puts user[:name]

p=(1..5).to_a
puts p
p = (1...5).to_a
puts p
p=("a".."z").to_a
puts p
p=(1..5).include?(4)
puts p
p=(1..5).include?(6)
puts p
p=(1..5).cover?(5)
puts p
p=(1...5).cover?(5)
puts p
p = (1..3).each do |num|
    puts num
end 
week=(1..5).to_a
p week
letters = ["a", "b", "c", "d"]

p letters[1..3] 
p letters[1...3] 
numbers = (1..3)

numbers.each do |number|
  puts number
end

p (1..5).to_a
p (1...5).to_a

p (1..10).include?(7)
p (1..10).include?(12)

p (1..10).cover?(10)
p (1...10).cover?(10)

colors = ["red", "blue", "green"]
p colors[0..1]
p colors[0...2]

a = 10
b = 3

p a + b
p a - b
p a * b
p a / b
p a % b
p a ** b

score = 10
score += 5
p score

score -= 2
p score

score *= 2
p score

score /= 2
p score

name = nil
name ||= "Guest"
p name

name ||= "Other"
p name

p 5 == 5
p 5 != 3
p 7 > 5
p 3 < 5
p 5 >= 5
p 4 <= 5

p "ruby" == "ruby"
p "ruby" == "Rails"

age = 22
has_id = true

p age >= 18 && has_id
p age < 18 || has_id
p !has_id

first_name = "Asha"
last_name = "Sharma"

p first_name + " " + last_name
p "ha" * 3

puts "#{first_name} ki age #{age} hai."

person = { name: "Asha", age: 21 }
p person[:name]

message = age >= 18 ? "Adult" : "Minor"
puts message

number = 8
p number % 2 == 0


age = 20

if age >= 18
  puts "Adult"
else
  puts "Minor"
end

temperature = 15

unless temperature > 25
  puts "Weather is cool"
end

day = "Monday"

case day
when "Monday"
  puts "Start of the week"
when "Friday"
  puts "Almost weekend"
else
  puts "Another day"
end

3.times do |number|
  puts number
end

count = 1

while count <= 3
  puts count
  count += 1
end

names = ["Asha", "Ravi", "Mina"]

names.each do |name|
  puts name
end

numbers = [1, 2, 3, 4]

doubled_numbers = numbers.map do |number|
  number * 2
end

p doubled_numbers

even_numbers = numbers.select do |number|
  number.even?
end

p even_numbers

def greet(name)
  puts "Hello, #{name}!"
end

greet("Asha")

def welcome(name, greeting = "Namaste")
  "#{greeting}, #{name}!"
end

puts welcome("Ravi")
puts welcome("Mina", "Hello")

def add(first_number, second_number)
  first_number + second_number
end

puts add(5, 3)

def check_age(age)
  if age >= 18
    "Adult"
  else
    "Minor"
  end
end

puts check_age(20)
puts check_age(15)

def square(number)
  number * number
end

puts square(4)

scores = [45, 80, 67, 92, 35]

passed_scores = scores.select do |score|
  score >= 50
end

p passed_scores

names = ["asha", "ravi", "mina"]

capitalized_names = names.map do |name|
  name.capitalize
end

p capitalized_names

prices = [100, 200, 300]

total = prices.each do |price|
  puts price
end

p total

def calculate_total(price, quantity = 1)
  price * quantity
end

puts calculate_total(100)
puts calculate_total(100, 3)

def status_message(status)
  case status
  when "open"
    "Task is open"
  when "done"
    "Task is complete"
  else
    "Unknown status"
  end
end

puts status_message("open")
puts status_message("done")
puts status_message("waiting")

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "My name is #{@name} and I am #{@age} years old."
  end
end

person = Person.new("Asha", 21)
puts person.introduce

class Student
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    "Hello, my name is #{@name}."
  end
end

student = Student.new("Ravi")
puts student.name
puts student.greet

class Animal
  def speak
    "The animal makes a sound."
  end
end

class Dog < Animal
  def speak
    "The dog barks."
  end
end

animal = Animal.new
dog = Dog.new

puts animal.speak
puts dog.speak

module Greeter
  def greet
    "Hello, #{@name}."
  end
end

class Member
  include Greeter

  def initialize(name)
    @name = name
  end
end

member = Member.new("Mina")
puts member.greet

class BankAccount
  def initialize(owner, balance)
    @owner = owner
    @balance = balance
  end

  def deposit(amount)
    raise ArgumentError, "Amount must be positive" if amount <= 0

    @balance += amount
    "New balance: #{@balance}"
  end

  def balance
    @balance
  end
end

account = BankAccount.new("Asha", 1000)
puts account.deposit(500)
puts account.balance

begin
  puts account.deposit(-100)
rescue ArgumentError => error
  puts "Error: #{error.message}"
end

begin
  number = Integer("25")
  puts number
rescue ArgumentError
  puts "Please enter a valid number"
end

begin
  number = Integer("hello")
  puts number
rescue ArgumentError => error
  puts "Could not convert the value: #{error.message}"
ensure
  puts "Program finished"
end