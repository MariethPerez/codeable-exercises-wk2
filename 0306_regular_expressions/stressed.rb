def stress (word)
  #find the stress!
  num = word[0, word =~ /[a-zA-Z]/]
  text = word.delete num

  pen = [
    "ic",
    "sion",
    "tion",
    "ious"]

  ante_pen = [
    "ty",
    "al",
    "ise",
    "ate"]

    if pen.include?(text)
      pos = (num.to_i - 1).to_s
      substring = "pen"
    else
      pos = (num.to_i - 2).to_s
      substring = "ante-pen"
    end
    
    pos + substring
end

word = gets.chomp

puts stress(word)

    
