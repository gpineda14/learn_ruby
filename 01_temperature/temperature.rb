def ftoc(temp)
  ((temp.to_f - 32) * 5) / 9
end

def ctof(temp)
  ((9 * temp.to_f) / 5 ) + 32
end
