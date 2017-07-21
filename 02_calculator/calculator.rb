#write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(numArr)
  total = 0
  numArr.each {|x| total += x}
  total
end

def multiply(*nums)
  result = 1
  nums.each{|x| result *= x}
  result
end

def power(base, power)
  result = 1
  start = 0
  while start < power
    result *= base
    start += 1
  end
  result
end

def factorial(num)
  if num <= 1
    return 1
  else
    return num * factorial(num - 1)
  end
end
