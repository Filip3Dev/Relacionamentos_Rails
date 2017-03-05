def add(a, b)
  return a + b
end

def subtract(a, b)
  return a - b
end

def multiply(a, b)
  return a * b
end

def divide(a, b)
  return a / b
end


puts "Let's do some math with just functions!"

age = add(30, 5)
height = subtract(78, 4)
weight = multiply(90, 2)
iq = divide(100, 2)
shuf = rand(1..60)
shuf2 = rand(1..60)
shuf3 = rand(1..60)
shuf = rand(1..6)
shuf2 = rand(1..6)
shuf3 = rand(1..6)
puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"
puts "#{shuf}-#{shuf2}-#{shuf3}"
arai = []
for i in 0..5
   num = i
   arai.push(num)
  puts "isso #{arai}"
end
