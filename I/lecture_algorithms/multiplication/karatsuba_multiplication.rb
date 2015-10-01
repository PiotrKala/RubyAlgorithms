def max(x, y)
  return x if x > y
  return y
end

def fix_numbers(x, y)
  x = x.to_s
  y = y.to_s
  if x.length < y.length
    diff = y.length - x.length
    zeros = "0" * diff
    x = "#{zeros}#{x}"
  elsif x.length > y.length
    diff = x.length - y.length
    zeros = "0" * diff
    y = "#{zeros}#{y}"
  end 
  unless x.length % 2 == 0
    x = "0#{x}" 
    y = "0#{y}" 
  end
  return x, y
end

def karatsuba(x, y)
  x, y = fix_numbers(x, y)

  return x.to_i * y.to_i if x.to_i < 10 || y.to_i < 10

  n = max(x.length, y.length)
  m = n / 2
  
  high_x = x[0, x.length / 2]
  low_x = x[x.length / 2, x.length]
  high_y = y[0, y.length / 2]
  low_y = y[y.length / 2, y.length]

  x = karatsuba(high_x, high_y)
  y = karatsuba(low_x, low_y)
  z = karatsuba((low_x.to_i + high_x.to_i), (low_y.to_i + high_y.to_i)) - x - y

  return (x * 10**(2*m)) + (z*(10**m)) + y
end
