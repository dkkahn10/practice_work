def modulo_maker(num1, num2)
  remainder = num1

  while remainder >= num2
    remainder = remainder - num2
  end

  remainder
end

puts modulo_maker(6, 4)
