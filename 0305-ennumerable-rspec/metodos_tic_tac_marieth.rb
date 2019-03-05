
def notPlayed(value,table)

    arrNP = table - value
    return arrNP 
end

def turnHuman(notplayed)
    value = 0
    loop do
      puts "\nEs el turno del Humano"
      value = $stdin.gets.chomp.to_i
      break if ( ( notplayed.include?(value)) && (value >= 1) && (value <=9) )
    end
    return value
end

