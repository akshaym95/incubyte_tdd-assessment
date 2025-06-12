class Calculator
  def add(str_input)
    length = str_input.length
    if length == 0
      0
    elsif length == 1
      str_input.to_i
    end
  end
end
