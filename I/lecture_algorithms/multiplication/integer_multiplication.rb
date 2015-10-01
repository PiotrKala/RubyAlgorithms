def add(outcome_list)
  outcome = ''
  out = 0
  until outcome_list.last.empty?
    outcome_list.each_with_index do |ele, index|
      to_add = ele[-1]
      outcome_list[index] = ele[0..-2]
      out += to_add.to_i
    end
    carry = out / 10
    out = out % 10
    outcome = "#{out}#{outcome}"
    out = carry
  end
  outcome
end

def multiple(x, y)
  x_index = x.length - 1
  outcome_list = []
  list_index = 0

  while x_index >= 0
    carry = 0
    outcome = ''
    y_index = y.length - 1
    while y_index >= 0
      out = x[x_index].to_i * y[y_index].to_i + carry
      carry = out / 10
      out = out % 10
      out = carry * 10 + out if y_index == 0
      outcome = "#{out}#{outcome}"
      y_index -= 1
    end
    outcome << '0' * list_index
    outcome_list[list_index] = outcome
    list_index += 1
    x_index -= 1
  end

  add(outcome_list)
end
