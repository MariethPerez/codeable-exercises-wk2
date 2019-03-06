def head_smash(arr)
  #your code here
  return "This isn't the gym!!" if arr.class == Integer
  return "Gym is empty" if arr.join.empty?
  
  arr.map! do |line|
    while !!(line =~ /O/)
      line[(line =~ /O/)] = " "
    end
    line
  end
  arr
end

input=
  ['*****************************************',
  '**  _O_   *   _O_   *   _O_   *   _O_  **',
  '** /(.)J  *  C(.)J  *  /(.)J  *  C(.)J **',
  '** _| |_  *  _| |_  *  _( )_  *  _( )_ *']

puts "String de entrada"
puts input
puts "String de salida"
puts head_smash(input)