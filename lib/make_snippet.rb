def snippet(str)
  array = str.split
  if array.length <= 5
    return array.join(" ")
  else 
    return array[0..4].push("...").join(" ")
  end
end
# snippet("hello my name is J")