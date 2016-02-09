def question(prompt, body)
  print prompt
  puts body
end

array_of_bodies = []

array_of_bodies.push 4 == 2 * 2
array_of_bodies.push 5 > 4
array_of_bodies.push (6 * 2) > 10
array_of_bodies.push 3 == 3
array_of_bodies.push (1 > 0) && (1 <= 1) == true
array_of_bodies.push 1 != 2
array_of_bodies.push (10 <= 10) || (2 >= 3) == true
array_of_bodies.push 12 % 3 == 0
array_of_bodies.push 100 == 10 ** 2
array_of_bodies.push 100/15 == 1000 / (300 / 2)

msg = "hEllO"
array_of_bodies.push msg.upcase == "HELLO"
array_of_bodies.push msg.swapcase == "HeLLo"
array_of_bodies.push msg.reverse == "OllEh"
array_of_bodies.push msg.reverse.upcase == "OLLEH"

arr = ['a', 'b', 'c']
array_of_bodies.push arr.last == 'c'
array_of_bodies.push 3 == arr.count
array_of_bodies.push arr.join(',') == 'a,b,c'
#Hint: This will take 2 method calls
array_of_bodies.push arr.last.upcase == 'C'

hsh = { name: 'Fido', age: '99' }
array_of_bodies.push  hsh[:name] == 'Fido'
array_of_bodies.push hsh.keys == [:name, :age]
array_of_bodies.push hsh.values == ['Fido', '99']
array_of_bodies.push hsh.merge({special: 'Dog'}) == { name: 'Fido', age: '99', special: 'Dog' }

puts array_of_bodies.count

array_of_bodies.each_with_index do |body, i|
  if i < 13
    prompt = "#{i+1}. "
    question(prompt, body)
  elsif i == 13
    prompt = "#{i}a. "
    question(prompt, body)
  else
    prompt = "#{i}. "
    question(prompt, body)
  end
end
