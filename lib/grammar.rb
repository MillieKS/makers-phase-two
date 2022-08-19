# 19-Aug-2022
# Navigator: Millie
# Driver: Jovi

# def grammar(text)
#  if text[0] == text[0].upcase && ".?!".include?(text[-1])
#   return true
#  else
#   return false
#  end
# end

# def grammar(text)
#   return text[0] == text[0].upcase && ".?!".include?(text[-1])
# end

def grammar(text)
  text[0] == text[0].upcase && ".?!".include?(text[-1])
end