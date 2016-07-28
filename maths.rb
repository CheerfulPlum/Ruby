class Maths 
	# numbers is a list
	def initialize
		@answer = 0
	end
	def add (numbers)
		@answer = 0
		numbers.each{|i| @answer+=i}
		puts "Total Addition is #{@answer}"
	end

	def multiply (numbers)
		@answer = 0
		numbers.each{|i| (@answer == 0 ? @answer = i : @answer = @answer*i) }
		puts "Total Multiplication is #{@answer}"
	end

end
puts "Magical Adder!"
puts "Enter some numbers, 0 to terminate"

currentNumber = nil
list = Array.new

while currentNumber != 0
	currentNumber = gets.to_i
	if currentNumber != 0
		list.push(currentNumber)
	end
end

maths = Maths.new()
maths.add(list)
maths.multiply(list)
