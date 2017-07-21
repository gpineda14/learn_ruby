class Book
  attr_reader :title
  def title=(new_title)
    littleWords = ["a", "an", "or", "and", "but", "for", "nor", "of", "the", "over", "in"]
    arr = new_title.split(' ')
    result = []
    result.push(arr[0].to_s.capitalize)
    arr[1, arr.length].each {|word|
      if littleWords.include? word
        result.push(word)
      else
        result.push(word.capitalize)
      end
    }
    @title = result.join(' ')
  end
end
