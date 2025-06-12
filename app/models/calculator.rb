class Calculator
  def add(str_input)
    length = str_input.length
    if length == 0
      0
    elsif length == 1
      str_input.to_i
    else
      if str_input[0] != "/"
        numbers = str_input.split /\s|\n|,/
        sum(numbers)
      else
        new_delimitor = str_input[2]
        numbers = str_input.split("\n").last.split(new_delimitor)
        sum(numbers)
      end
    end
  end
  def sum(numbers)
    sum = 0
    negative_nums = []
    numbers.each do |num|
      if num.to_i < 0
        negative_nums << num
      end
      sum+= num.to_i
    end
    if negative_nums.present?
      raise "negative numbers not allowed #{negative_nums.join(', ')}"
    end
    sum
  end
end
