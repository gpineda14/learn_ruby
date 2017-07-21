def echo(term)
  term
end

def shout(term)
  term.upcase
end

def repeat(term, *args)
  if args.size == 0
    return term + " " + term
  else
    count = 0
    times = args[0]
    result = term
    while count < times - 1
      result += ' ' + term
      count += 1
    end
  end
  result
end

def start_of_word(term, index)
  term[0, index]
end

def first_word(term)
  index = 0
  arr = []
  while term[index] != ' '
    arr.push(term[index])
    index += 1
  end
  arr.join("")
end

def titleize(term)
  littleWords = ["a", "an", "or", "and", "but", "for", "nor", "of", "the", "over", "in"]
  arr = term.split(' ')
  result = []
  result.push(arr[0].to_s.capitalize)
  arr[1, arr.length].each {|word|
    if littleWords.include? word
      result.push(word)
    else
      result.push(word.capitalize)
    end
  }
  result.join(' ')
end
