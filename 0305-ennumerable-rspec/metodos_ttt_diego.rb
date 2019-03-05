def validar_fila(array, player)
  array.each{|fila| 
    if fila[0]==fila[1] && fila [1]==fila[2] && fila[0]!="-"
      if player
        return "The gamer X win"
      else
        return "The gamer O win"
      end
    end
  }
  false
end

def validar_columna(array, player)
  for columna in 0..2
    if array[0][columna] == array[1][columna] && array[1][columna] == array[2][columna] && array[0][columna] != "-"
      if player 
        return "The gamer X win"
      else
        return "The gamer O win"
      end
      exit
    end
  end
  false 
end

def validar_diagonales(array, player)
  if (array[0][0] == array[1][1] && array[1][1] == array[2][2]) or (array[0][2] == array[1][1] && array[1][1] == array[2][0]) and (array[1][1] != "-")
    if player 
      return "The gamer X win"
    else
      return "The gamer O win"
    end  
  end
  false
end