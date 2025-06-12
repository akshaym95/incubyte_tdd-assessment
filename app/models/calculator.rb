class Calculator
  def add(str_input)
    length = str_input.length
    if length == 0
      0
    elsif length == 1
      str_input.to_i
    else
      numbers = str_input.split /\s|\n|,/
      sum = 0
      numbers.each { |num| sum+= num.to_i }
      sum
    end
  end
end
