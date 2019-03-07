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

    #(pen.include?(text) || ante_pen.include?(text)) 

    if  (num.to_i>=3 && num.to_i<=13) && (pen.include?(text) || ante_pen.include?(text))
        if pen.include?(text)
          pos = (num.to_i - 1).to_s
          substring = "pen"
        else
          pos = (num.to_i - 2).to_s
          substring = "ante-pen"
        end
        
        pos + substring
    else
       puts "Invalid word"
    end      
end

word = gets.chomp

puts stress(word)

    
