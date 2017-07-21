def translate(term)
  arr = []
  index = 0
  word = ""
  size = term.length
  result = []
  while index < size + 1
    if term[index] == ' ' || index == size
      arr.push(word)
      word = ""
      index += 1
    end
    word += term[index].to_s
    index += 1
  end
  arr.collect { |word|
    if word[0] == 'a'
      word = word + "ay"
      result.push(word)
    else
      vowels = ["a", "e", "i", "o", "u"]
      index = 0
      string = ""
      while not (vowels.include? word[index])
        if word[index] == "q" && word[index + 1] == "u"
          string += word[index] + word[index + 1]
          index += 2
          break
        end
        string += word[index]
        index += 1
      end
      word = word[index, word.length] + word[0, index] + "ay"
      result.push(word)
    end
  }
  result.join(' ')
end
